# Get a feature flag returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::FeatureFlagsAPI.new

# there is a valid "feature_flag" in the system
FEATURE_FLAG_DATA_ID = ENV["FEATURE_FLAG_DATA_ID"]
p api_instance.get_feature_flag(FEATURE_FLAG_DATA_ID)
