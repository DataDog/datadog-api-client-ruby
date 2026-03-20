# Disable a feature flag in an environment returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::FeatureFlagsAPI.new

# there is a valid "feature_flag" in the system
FEATURE_FLAG_DATA_ID = ENV["FEATURE_FLAG_DATA_ID"]

# there is a valid "environment" in the system
ENVIRONMENT_DATA_ID = ENV["ENVIRONMENT_DATA_ID"]
p api_instance.disable_feature_flag_environment(FEATURE_FLAG_DATA_ID, ENVIRONMENT_DATA_ID)
