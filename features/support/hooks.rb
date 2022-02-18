require 'json'

Around do |scenario, block|
  current_span = Datadog::Tracing.active_span
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

  if scenario.tags.any? { |tag| tag.name == '@skip' } then
    skip_this_scenario('skip')
  end

  if scenario.tags.any? { |tag| tag.name == '@skip-ruby' } then
    skip_this_scenario('skip ruby')
  end

  if !(ENV["RECORD"].nil? || ENV["RECORD"] == "false") && scenario.tags.any? { |tag| tag.name == '@replay-only' } then
    skip_this_scenario('replay only')
  end
  
  if ENV["RECORD"] != "none" && scenario.tags.any? { |tag| tag.name == '@integration-only' } then
    skip_this_scenario('integration only')
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
    if !File.exist?(cassette.file) && ENV.fetch("RECORD", "false") == "false" && !scenario.match_tags?("@integration-only")
      raise Exception.new "Cassette '#{cassette.file}' not found: create one setting `RECORD=true` or ignore it using `RECORD=none`"
    end
    File.delete(cassette.file) if ENV["RECORD"] == "true" && File.exist?(cassette.file) && !scenario.match_tags?("@replay-only")

    if use_real_time? then
      freeze = Time.now.utc
    else
      File.open(cassette.file.gsub(/\.yml$/, '.frozen'), 'r') do |f|
        freeze = Time.parse(f.readline.chomp)
      end
    end

    Timecop.freeze(freeze) do
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
