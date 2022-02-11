require "datadog_api_client"
api_instance = DatadogAPIClient::V1::MetricsAPI.new
from = 789 # Integer | Start of the queried time period, seconds since the Unix epoch.
to = 789 # Integer | End of the queried time period, seconds since the Unix epoch.
query = "query_example" # String | Query string.

begin
  # Query timeseries points
  result = api_instance.query_metrics(from, to, query)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling MetricsAPI->query_metrics: #{e}"
end
