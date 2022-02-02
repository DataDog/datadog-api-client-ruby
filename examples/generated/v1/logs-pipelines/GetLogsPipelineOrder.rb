require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::LogsPipelinesAPI.new

begin
  # Get pipeline order
  result = api_instance.get_logs_pipeline_order
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling LogsPipelinesAPI->get_logs_pipeline_order: #{e}"
end
