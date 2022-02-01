require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::LogsPipelinesAPI.new
pipeline_id = 'pipeline_id_example' # String | ID of the pipeline to get.

begin
  # Get a pipeline
  result = api_instance.get_logs_pipeline(pipeline_id)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling LogsPipelinesAPI->get_logs_pipeline: #{e}"
end
