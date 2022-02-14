require "datadog_api_client"
api_instance = DatadogAPIClient::V1::LogsPipelinesAPI.new
body = DatadogAPIClient::V1::LogsPipelinesOrder.new({ pipeline_ids: ["pipeline_ids_example"] }) # LogsPipelinesOrder | Object containing the new ordered list of pipeline IDs.

begin
  # Update pipeline order
  result = api_instance.update_logs_pipeline_order(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling LogsPipelinesAPI->update_logs_pipeline_order: #{e}"
end
