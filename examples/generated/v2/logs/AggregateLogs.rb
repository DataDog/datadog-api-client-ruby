require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::LogsAPI.new
body = DatadogAPIClient::V2::LogsAggregateRequest.new # LogsAggregateRequest | 

begin
  # Aggregate events
  result = api_instance.aggregate_logs(body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsAPI->aggregate_logs: #{e}"
end
