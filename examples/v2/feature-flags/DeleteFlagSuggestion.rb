# Delete a flag suggestion returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::FeatureFlagsAPI.new
api_instance.delete_flag_suggestion("550e8400-e29b-41d4-a716-446655440020")
