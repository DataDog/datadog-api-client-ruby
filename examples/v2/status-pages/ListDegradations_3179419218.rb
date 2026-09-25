# List degradations with source ID filter returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::StatusPagesAPI.new

# there is a valid "degradation" in the system
DEGRADATION_DATA_ID = ENV["DEGRADATION_DATA_ID"]
opts = {
  filter_source_id: DEGRADATION_DATA_ID,
}
p api_instance.list_degradations(opts)
