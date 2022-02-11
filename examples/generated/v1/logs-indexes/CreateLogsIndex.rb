require "datadog_api_client"
api_instance = DatadogAPIClient::V1::LogsIndexesAPI.new
body = DatadogAPIClient::V1::LogsIndex.new({ filter: DatadogAPIClient::V1::LogsFilter.new, name: "main" }) # LogsIndex | Object containing the new index.

begin
  # Create an index
  result = api_instance.create_logs_index(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling LogsIndexesAPI->create_logs_index: #{e}"
end
