# Set the approval requirement for a feature flag returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::FeatureFlagsAPI.new

body = DatadogAPIClient::V2::UpdateFeatureFlagApprovalsRequest.new({
  data: DatadogAPIClient::V2::UpdateFeatureFlagApprovalsData.new({
    attributes: DatadogAPIClient::V2::UpdateFeatureFlagApprovalsAttributes.new({
      enabled: true,
    }),
    type: DatadogAPIClient::V2::FeatureFlagApprovalsDataType::FEATURE_FLAG_APPROVALS,
  }),
})
p api_instance.update_feature_flag_approvals("550e8400-e29b-41d4-a716-446655440000", body)
