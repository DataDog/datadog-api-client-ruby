# List feature flags returns the second filtered page

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::FeatureFlagsAPI.new
opts = {
  tags: [
    "list-test:example-feature-flag",
  ],
  page_limit: 1,
  page_offset: 1,
  sort: "name",
}
p api_instance.list_feature_flags(opts)
