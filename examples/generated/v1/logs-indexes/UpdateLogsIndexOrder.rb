require "datadog_api_client"
api_instance = DatadogAPIClient::V1::LogsIndexesAPI.new
body = DatadogAPIClient::V1::LogsIndexesOrder.new({ index_names: ["index_names_example"] }) # LogsIndexesOrder | Object containing the new ordered list of index names

begin
  # Update indexes order
  result = api_instance.update_logs_index_order(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling LogsIndexesAPI->update_logs_index_order: #{e}"
end
