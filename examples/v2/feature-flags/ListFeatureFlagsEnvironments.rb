# List environments returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::FeatureFlagsAPI.new
p api_instance.list_feature_flags_environments()
