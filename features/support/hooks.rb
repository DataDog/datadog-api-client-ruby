require 'json'

Before do |scenario|
  current_span = Datadog.configuration[:cucumber][:tracer].active_span
  unless current_span.nil?
    codeowners = []
    scenario.tags.each do |tag|
      prefix = '@endpoint('
      current_span.set_tag('version', tag.name[prefix.length...-2]) if tag.name.start_with? prefix
      # add test.codeowners from team: tag
      prefix = '@team:'
      codeowners.push('@' + tag.name[prefix.length...tag.name.length]) if tag.name.start_with? prefix
    end
    current_span.set_tag('test.codeowners', codeowners.to_json) unless codeowners.empty?
  end
end

Before('@skip') do |scenario|
  skip_this_scenario('skip')
end

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
  @scenario = scenario
  m = scenario.location.file.match /features\/v(?<version>\d+)\/.*/
  @api_version = m[:version]
  block.call
end

Around do |scenario, block|
  VCR.use_cassette(scenario.location.file.chomp('.feature') + "/" + scenario.name.gsub(/[^A-Za-z0-9]+/, '-')[0..100], :record_on_error => false, :match_requests_on => [:method, :host, :path, :query, :body_as_json]) do |cassette|
    if !File.exist?(cassette.file) && ENV.fetch("RECORD", "false") == "false" && !scenario.match_tags?("@integration-only")
      raise Exception.new "Cassette '#{cassette.file}' not found: create one setting `RECORD=true` or ignore it using `RECORD=none`";
    end
    File.delete(cassette.file) if ENV["RECORD"] == "true" && File.exist?(cassette.file) && !scenario.match_tags?("@replay-only")
    Timecop.freeze(use_real_time? ? Time.now.utc : cassette.originally_recorded_at) do
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
