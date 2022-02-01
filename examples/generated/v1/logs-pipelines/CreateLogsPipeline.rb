require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::LogsPipelinesAPI.new
body = DatadogAPIClient::V1::LogsPipeline.new({name: 'name_example'}) # LogsPipeline | Definition of the new pipeline.

begin
  # Create a pipeline
  result = api_instance.create_logs_pipeline(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling LogsPipelinesAPI->create_logs_pipeline: #{e}"
end
