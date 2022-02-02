require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::LogsIndexesAPI.new

begin
  # Get all indexes
  result = api_instance.list_log_indexes
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling LogsIndexesAPI->list_log_indexes: #{e}"
end
