# Delete an environment returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::FeatureFlagsAPI.new

# there is a valid "environment" in the system
ENVIRONMENT_DATA_ID = ENV["ENVIRONMENT_DATA_ID"]
api_instance.delete_feature_flags_environment(ENVIRONMENT_DATA_ID)
