require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::MetricsAPI.new
from = 789 # Integer | Seconds since the Unix epoch.
opts = {
  host: 'host_example', # String | Hostname for filtering the list of metrics returned. If set, metrics retrieved are those with the corresponding hostname tag.
  tag_filter: 'env IN (staging,test) AND service:web' # String | Filter metrics that have been submitted with the given tags. Supports boolean and wildcard expressions. Cannot be combined with other filters.
}

begin
  # Get active metrics list
  result = api_instance.list_active_metrics(from, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling MetricsAPI->list_active_metrics: #{e}"
end
