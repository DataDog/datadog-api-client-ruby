# Start a progressive rollout returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::FeatureFlagsAPI.new
p api_instance.start_exposure_schedule("550e8400-e29b-41d4-a716-446655440010")
