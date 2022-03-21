# Get pipeline order returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::LogsPipelinesAPI.new
p api_instance.get_logs_pipeline_order()
