# Update a cost recommendation custom rule returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.update_cost_recommendation_custom_rule".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new

body = DatadogAPIClient::V2::CostRecommendationCustomRuleUpdateRequest.new({
  data: DatadogAPIClient::V2::CostRecommendationCustomRuleUpdateData.new({
    attributes: DatadogAPIClient::V2::CostRecommendationCustomRuleUpdateAttributes.new({
      enabled: false,
      filters: [
        DatadogAPIClient::V2::CostRecommendationCustomRuleFilter.new({
          filter_type: DatadogAPIClient::V2::CostRecommendationCustomRuleFilterType::IS,
          tag: "env",
          values: [
            "staging",
          ],
        }),
      ],
      name: "Staging and development instances",
      notes: "Staging instances can run with less headroom.",
      settings: {
        lookback_days: 14, max_cpu_user_limit: 0.05,
      },
    }),
    id: "8a1b6f3e-2c4d-4e5f-9a7b-1c2d3e4f5a6b",
    type: DatadogAPIClient::V2::CostRecommendationCustomRuleType::CUSTOM_RULES,
  }),
})
p api_instance.update_cost_recommendation_custom_rule("custom_rule_id", body)
