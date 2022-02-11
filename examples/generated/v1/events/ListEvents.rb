require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::EventsAPI.new
start = 789 # Integer | POSIX timestamp.
_end = 789 # Integer | POSIX timestamp.
opts = {
  priority: DatadogAPIClient::V1::EventPriority::NORMAL, # EventPriority | Priority of your events, either `low` or `normal`.
  sources: 'sources_example', # String | A comma separated string of sources.
  tags: 'host:host0', # String | A comma separated list indicating what tags, if any, should be used to filter the list of monitors by scope.
  unaggregated: true, # Boolean | Set unaggregated to `true` to return all events within the specified [`start`,`end`] timeframe. Otherwise if an event is aggregated to a parent event with a timestamp outside of the timeframe, it won't be available in the output. Aggregated events with `is_aggregate=true` in the response will still be returned unless exclude_aggregate is set to `true.`
  exclude_aggregate: true, # Boolean | Set `exclude_aggregate` to `true` to only return unaggregated events where `is_aggregate=false` in the response. If the `exclude_aggregate` parameter is set to `true`, then the unaggregated parameter is ignored and will be `true` by default.
  page: 56 # Integer | By default 1000 results are returned per request. Set page to the number of the page to return with `0` being the first page. The page parameter can only be used when either unaggregated or exclude_aggregate is set to `true.`
}

begin
  # Query the event stream
  result = api_instance.list_events(start, _end, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling EventsAPI->list_events: #{e}"
end
