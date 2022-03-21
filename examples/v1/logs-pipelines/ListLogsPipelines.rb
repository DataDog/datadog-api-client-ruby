# Get all pipelines returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::LogsPipelinesAPI.new
p api_instance.list_logs_pipelines()
