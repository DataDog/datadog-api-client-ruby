# List feature flags excludes unknown teams

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::FeatureFlagsAPI.new
opts = {
  tags: [
    "list-test:example-feature-flag",
  ],
  teams: [
    "missing-example-feature-flag",
  ],
}
p api_instance.list_feature_flags(opts)
