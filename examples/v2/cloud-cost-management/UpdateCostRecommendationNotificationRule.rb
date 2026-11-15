# Update a cost recommendation notification rule returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.update_cost_recommendation_notification_rule".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new

body = DatadogAPIClient::V2::CostRecommendationNotificationRuleUpdateRequest.new({
  data: DatadogAPIClient::V2::CostRecommendationNotificationRuleUpdateData.new({
    attributes: DatadogAPIClient::V2::CostRecommendationNotificationRuleUpdateAttributes.new({
      channel_id: "C0456ABCD",
      destination_type: DatadogAPIClient::V2::CostRecommendationNotificationRuleDestinationType::SLACK,
      enabled: false,
      frequency: DatadogAPIClient::V2::CostRecommendationNotificationRuleFrequency::WEEKLY,
      interval_execution_date: "2026-11-02",
      interval_execution_time: "09:30",
      mention_targets: [
        "U01ABCDE",
      ],
      message_customization: DatadogAPIClient::V2::CostRecommendationNotificationRuleMessageCustomization.new({
        actions: DatadogAPIClient::V2::CostRecommendationNotificationRuleMessageActions.new({
          view_in_ccm: DatadogAPIClient::V2::CostRecommendationNotificationRuleMessageAction.new({
            bulk: true,
            per_rec: true,
          }),
        }),
        header: DatadogAPIClient::V2::CostRecommendationNotificationRuleMessageCustomizationHeader.new({
          custom_text: " recommendations to review this week.",
          notification_name: true,
          total_savings: true,
        }),
        include_tags: [
          "team",
        ],
        mode: DatadogAPIClient::V2::CostRecommendationNotificationRuleMessageCustomizationMode::STRUCTURED,
        per_rec: DatadogAPIClient::V2::CostRecommendationNotificationRuleMessageCustomizationPerRec.new({
          effort: true,
          risk: true,
          why: true,
        }),
      }),
      name: "Production recommendations",
      scope_query: "service:api AND env:prod",
      timezone: "America/New_York",
      weekly_execution_day: "monday",
      weekly_execution_time: "09:30",
      workspace_id: "T0123ABCD",
    }),
    id: "2c59b248-6a91-4f95-972a-dc236cae9cbb",
    type: DatadogAPIClient::V2::CostRecommendationNotificationRuleType::NOTIFICATION_RULES,
  }),
})
p api_instance.update_cost_recommendation_notification_rule("notification_rule_id", body)
