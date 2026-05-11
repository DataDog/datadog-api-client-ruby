# List feature flags returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::FeatureFlagsAPI.new
opts = {
  limit: 10,
}
p api_instance.list_feature_flags(opts)
