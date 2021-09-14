Before('@integration-only') do |scenario|
  skip_this_scenario('integration only') unless ENV["RECORD"] == "none"
end

Before('@skip-ruby') do |scenario|
  skip_this_scenario('skip ruby')
end

Before('@replay-only') do |scenario|
  skip_this_scenario('replay only') unless ENV["RECORD"].nil? || ENV["RECORD"] == "false"
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
  VCR.use_cassette(scenario.location.file.chomp('.feature') + "/" + scenario.name.gsub(/[^A-Za-z0-9]+/, '-')[0..100], :record_on_error => false, :match_requests_on => [:method, :host, :path, :query, :body_as_json]) do |cassette|
    if !File.exist?(cassette.file) && ENV["RECORD"] == "false"
      raise Exception.new "Cassette '#{cassette.file}' not found: create one setting `RECORD=true` or ignore it using `RECORD=none`";
    end
    File.delete(cassette.file) if ENV["RECORD"] == "true" && File.exist?(cassette.file) && !scenario.match_tags?("@replay-only")
    Timecop.freeze(use_real_time? ? Time.now : cassette.originally_recorded_at) do
      block.call
    end
  end
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
