# Delete a specific pipeline returns "Pipeline deleted" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ObservabilityPipelinesAPI.new
api_instance.delete_pipeline("pipeline_id")
