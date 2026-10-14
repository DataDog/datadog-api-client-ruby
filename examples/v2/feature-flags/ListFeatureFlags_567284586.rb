# List feature flags filters SDK availability for SERVER

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::FeatureFlagsAPI.new
opts = {
  tags: [
    "list-test:example-feature-flag",
  ],
  distribution_channel: FeatureFlagDistributionChannel::SERVER,
  sort: "name",
}
p api_instance.list_feature_flags(opts)
