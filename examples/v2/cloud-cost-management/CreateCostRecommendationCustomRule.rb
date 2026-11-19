# Create a cost recommendation custom rule returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.create_cost_recommendation_custom_rule".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new

body = DatadogAPIClient::V2::CostRecommendationCustomRuleCreateRequest.new({
  data: DatadogAPIClient::V2::CostRecommendationCustomRuleCreateData.new({
    attributes: DatadogAPIClient::V2::CostRecommendationCustomRuleCreateAttributes.new({
      enabled: true,
      filters: [
        DatadogAPIClient::V2::CostRecommendationCustomRuleFilter.new({
          filter_type: DatadogAPIClient::V2::CostRecommendationCustomRuleFilterType::IS,
          tag: "env",
          values: [
            "staging",
          ],
        }),
      ],
      name: "Staging instances",
      notes: "Staging instances can run with less headroom.",
      recommender_id: "aws_ec2_instance_unused",
      settings: {
        lookback_days: 14, max_cpu_user_limit: 0.05,
      },
    }),
    type: DatadogAPIClient::V2::CostRecommendationCustomRuleType::CUSTOM_RULES,
  }),
})
p api_instance.create_cost_recommendation_custom_rule(body)
