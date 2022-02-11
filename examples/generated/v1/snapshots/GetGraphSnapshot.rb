require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::SnapshotsAPI.new
start = 789 # Integer | The POSIX timestamp of the start of the query.
_end = 789 # Integer | The POSIX timestamp of the end of the query.
opts = {
  metric_query: 'metric_query_example', # String | The metric query.
  event_query: 'event_query_example', # String | A query that adds event bands to the graph.
  graph_def: 'graph_def_example', # String | A JSON document defining the graph. `graph_def` can be used instead of `metric_query`. The JSON document uses the [grammar defined here](https://docs.datadoghq.com/graphing/graphing_json/#grammar) and should be formatted to a single line then URL encoded.
  title: 'title_example' # String | A title for the graph. If no title is specified, the graph does not have a title.
}

begin
  # Take graph snapshots
  result = api_instance.get_graph_snapshot(start, _end, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SnapshotsAPI->get_graph_snapshot: #{e}"
end
