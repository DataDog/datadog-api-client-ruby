# List feature flags gives page parameters precedence over aliases

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::FeatureFlagsAPI.new
opts = {
  tags: [
    "list-test:example-feature-flag",
  ],
  limit: 2,
  offset: 1,
  page_limit: 1,
  page_offset: 0,
  sort: "name",
}
p api_instance.list_feature_flags(opts)
