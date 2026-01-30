# Delete a pipeline returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ObservabilityPipelinesAPI.new

# there is a valid "pipeline" in the system
PIPELINE_DATA_ID = ENV["PIPELINE_DATA_ID"]
api_instance.delete_pipeline(PIPELINE_DATA_ID)
