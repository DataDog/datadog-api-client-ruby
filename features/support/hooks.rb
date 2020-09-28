Around do |scenario, block|
  Datadog.tracer.trace('test', { 'resource': scenario.name, 'span_type': 'test' }) do |span|
    span.set_tag(Datadog::Ext::Analytics::TAG_ENABLED, true)
    scenario.tags.each do |tag|
      prefix = '@endpoint('
      span.set_tag('version', tag.name[prefix.length...-1]) if tag.name.start_with? prefix
    end
    block.call
  end
end

AfterConfiguration do |config|
  config.on_event :test_step_started do |step|
    Datadog.tracer.trace('step', { 'resource': step.test_step.to_s, 'span_type': 'step' })
  end
end

AfterConfiguration do |config|
  config.on_event :test_step_finished do |step|
    current_span = Datadog.tracer.active_span
    unless current_span.nil?
      if current_span.span_type == 'step'
        unless step.result.passed?
          current_span.set_error step.result.exception
          # mark all parents spans as failed
          s = current_span
          while s = s.parent
            s.set_tag(Datadog::Ext::Errors::MSG, "failed #{step.test_step}") unless s.get_tag(Datadog::Ext::Errors::MSG)
          end
        end
        current_span.finish
      end
    end
  end
end

Around do |scenario, block|
  @scenario = scenario
  m = scenario.location.file.match /features\/v(?<version>\d+)\/.*/
  @api_version = m[:version]
  block.call
end

Around do |scenario, block|
  @undo ||= []
  block.call
  @undo.reverse!.each do |cleanup|
    begin
      cleanup.call
    rescue Exception => e
      log "Cleanup of '#{scenario.name}' failed\n#{e}"
    end
  end
  @undo = []
end

Around do |scenario, block|
  VCR.use_cassette(scenario.location.file.chomp('.feature') + "/" + scenario.name.gsub(/[^A-Za-z0-9]+/, '-')[0..100], :record_on_error => false) do |cassette|
    Timecop.freeze(cassette.originally_recorded_at || Time.now) do
      block.call
    end
  end
end
