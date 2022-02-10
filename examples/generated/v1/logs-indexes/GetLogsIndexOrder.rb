require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::LogsIndexesAPI.new

begin
  # Get indexes order
  result = api_instance.get_logs_index_order
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling LogsIndexesAPI->get_logs_index_order: #{e}"
end
