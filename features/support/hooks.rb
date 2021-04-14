Before('@integration-only') do |scenario|
  skip_this_scenario('integration only') unless ENV["RECORD"] == "none"
end

Around do |scenario, block|
  current_span = Datadog.configuration[:cucumber][:tracer].active_span
  unless current_span.nil?
    scenario.tags.each do |tag|
      prefix = '@endpoint('
      current_span.set_tag('version', tag.name[prefix.length...-1]) if tag.name.start_with? prefix
    end
  end
  block.call
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
  VCR.use_cassette(scenario.location.file.chomp('.feature') + "/" + scenario.name.gsub(/[^A-Za-z0-9]+/, '-')[0..100], :record_on_error => false, :match_requests_on => [:host, :path, :uri, :body]) do |cassette|
    Timecop.freeze(use_real_time? ? Time.now : cassette.originally_recorded_at) do
      block.call
    end
  end
end
