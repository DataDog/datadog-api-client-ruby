# List feature flags combines exact keys tags search types creators and IDs

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::FeatureFlagsAPI.new

# there is a valid "feature_flag_list_a" in the system
FEATURE_FLAG_LIST_A_DATA_ATTRIBUTES_CREATED_BY = ENV["FEATURE_FLAG_LIST_A_DATA_ATTRIBUTES_CREATED_BY"]
FEATURE_FLAG_LIST_A_DATA_ID = ENV["FEATURE_FLAG_LIST_A_DATA_ID"]

# there is a valid "feature_flag_list_b" in the system
FEATURE_FLAG_LIST_B_DATA_ID = ENV["FEATURE_FLAG_LIST_B_DATA_ID"]
opts = {
  key: "list-a-example-feature-flag",
  tags: [
    "list-test:example-feature-flag",
    "color:blue",
  ],
  search: "LIST-A-example-feature-flag",
  value_type: [
    ValueType::BOOLEAN,
    ValueType::STRING,
  ],
  created_by: [
    FEATURE_FLAG_LIST_A_DATA_ATTRIBUTES_CREATED_BY,
  ],
  flag_ids: [
    FEATURE_FLAG_LIST_A_DATA_ID,
    FEATURE_FLAG_LIST_B_DATA_ID,
  ],
  is_archived: false,
}
p api_instance.list_feature_flags(opts)
