# Get a specific pipeline returns "Details of a pipeline" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ObservabilityPipelinesAPI.new
p api_instance.get_pipeline("pipeline_id")
