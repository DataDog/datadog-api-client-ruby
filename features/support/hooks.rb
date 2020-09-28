AfterConfiguration do |config|
  config.on_event :test_case_started do |event|
    span = Datadog.tracer.trace('test', { 'resource': event.test_case.name, 'span_type': 'test' })
    span.set_tag(Datadog::Ext::Analytics::TAG_ENABLED, true)
    event.test_case.tags.each do |tag|
      prefix = '@endpoint('
      span.set_tag('version', tag.name[prefix.length...-1]) if tag.name.start_with? prefix
    end
  end

  config.on_event :test_case_finished do |event|
    current_span = Datadog.tracer.active_span
    unless current_span.nil?
      if current_span.span_type == 'test'
        if event.result.failed?
          current_span.set_tag(Datadog::Ext::Errors::MSG, "failed")
        end
        current_span.finish
      end
    end
  end

  config.on_event :test_step_started do |step|
    Datadog.tracer.trace('step', { 'resource': step.test_step.to_s, 'span_type': 'step' })
  end

  config.on_event :test_step_finished do |step|
    current_span = Datadog.tracer.active_span
    unless current_span.nil?
      if current_span.span_type == 'step'
        unless step.result.passed?
          current_span.set_error step.result.exception
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
