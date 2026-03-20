# Get an environment returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::FeatureFlagsAPI.new

# there is a valid "environment" in the system
ENVIRONMENT_DATA_ID = ENV["ENVIRONMENT_DATA_ID"]
p api_instance.get_feature_flags_environment(ENVIRONMENT_DATA_ID)
