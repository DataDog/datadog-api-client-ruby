# List feature flags filters permanent staleness using computed details

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::FeatureFlagsAPI.new
opts = {
  tags: [
    "list-test:example-feature-flag",
  ],
  staleness_status: FeatureFlagStalenessStatus::PERMANENT,
}
p api_instance.list_feature_flags(opts)
