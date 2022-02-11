require "datadog_api_client"
api_instance = DatadogAPIClient::V1::MetricsAPI.new
q = "q_example" # String | Query string to search metrics upon. Must be prefixed with `metrics:`.

begin
  # Search metrics
  result = api_instance.list_metrics(q)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling MetricsAPI->list_metrics: #{e}"
end
