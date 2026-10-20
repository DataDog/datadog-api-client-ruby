# Patch a saved filter replaces rules and preserves metadata

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::FeatureFlagsAPI.new

body = DatadogAPIClient::V2::PatchSavedFilterRequest.new({
  data: DatadogAPIClient::V2::PatchSavedFilterData.new({
    type: DatadogAPIClient::V2::SavedFilterDataType::SAVED_FILTERS,
    attributes: DatadogAPIClient::V2::PatchSavedFilterAttributes.new({
      targeting_rules: [
        DatadogAPIClient::V2::SavedFilterTargetingRuleRequest.new({
          conditions: [
            DatadogAPIClient::V2::SavedFilterConditionRequest.new({
              operator: DatadogAPIClient::V2::SavedFilterConditionOperator::ONE_OF,
              attribute: "email",
              value: [
                "test@example.com",
              ],
            }),
          ],
        }),
      ],
    }),
  }),
})
p api_instance.update_saved_filter_attributes("2cfc7949-7eb4-4d76-b1b8-d1aa9b565535", body)
