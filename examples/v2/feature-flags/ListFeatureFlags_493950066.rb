# List feature flags filters disabled production status

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::FeatureFlagsAPI.new

# there is a valid "feature_flag_list_a" in the system
FEATURE_FLAG_LIST_A_DATA_ID = ENV["FEATURE_FLAG_LIST_A_DATA_ID"]

# there is a valid "feature_flag_list_b" in the system
FEATURE_FLAG_LIST_B_DATA_ID = ENV["FEATURE_FLAG_LIST_B_DATA_ID"]
opts = {
  flag_ids: [
    FEATURE_FLAG_LIST_A_DATA_ID,
    FEATURE_FLAG_LIST_B_DATA_ID,
  ],
  production_status: [
    FeatureFlagProductionStatus::DISABLED,
  ],
}
p api_instance.list_feature_flags(opts)
