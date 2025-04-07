# Get a specific pipeline returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_pipeline".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ObservabilityPipelinesAPI.new

# there is a valid "pipeline" in the system
PIPELINE_DATA_ID = ENV["PIPELINE_DATA_ID"]
p api_instance.get_pipeline(PIPELINE_DATA_ID)
