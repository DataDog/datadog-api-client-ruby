# Get a flag suggestion returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::FeatureFlagsAPI.new
p api_instance.get_flag_suggestion("550e8400-e29b-41d4-a716-446655440020")
