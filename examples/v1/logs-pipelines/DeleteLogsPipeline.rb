# Delete a pipeline returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::LogsPipelinesAPI.new
p api_instance.delete_logs_pipeline("pipeline_id")
