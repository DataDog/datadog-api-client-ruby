require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::LogsPipelinesAPI.new

begin
  # Get all pipelines
  result = api_instance.list_logs_pipelines
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling LogsPipelinesAPI->list_logs_pipelines: #{e}"
end
