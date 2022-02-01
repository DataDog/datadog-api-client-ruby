require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::LogsPipelinesAPI.new
pipeline_id = 'pipeline_id_example' # String | ID of the pipeline to delete.
body = DatadogAPIClient::V1::LogsPipeline.new({name: 'name_example'}) # LogsPipeline | New definition of the pipeline.

begin
  # Update a pipeline
  result = api_instance.update_logs_pipeline(pipeline_id, body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling LogsPipelinesAPI->update_logs_pipeline: #{e}"
end
