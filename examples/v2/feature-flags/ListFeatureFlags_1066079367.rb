# List feature flags combines teams with legacy team tags

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::FeatureFlagsAPI.new
opts = {
  tags: [
    "list-test:example-feature-flag",
    "team:api-client-test-b",
  ],
  teams: [
    "api-client-test-a",
    "api-client-test-a",
  ],
}
p api_instance.list_feature_flags(opts)
