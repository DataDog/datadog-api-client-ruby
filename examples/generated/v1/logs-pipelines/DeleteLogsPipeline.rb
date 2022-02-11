require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::LogsPipelinesAPI.new
pipeline_id = 'pipeline_id_example' # String | ID of the pipeline to delete.

begin
  # Delete a pipeline
  api_instance.delete_logs_pipeline(pipeline_id)
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling LogsPipelinesAPI->delete_logs_pipeline: #{e}"
end
