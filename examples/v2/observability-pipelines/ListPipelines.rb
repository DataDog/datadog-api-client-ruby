# Get all pipelines returns "A list of pipelines" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ObservabilityPipelinesAPI.new
p api_instance.list_pipelines()
