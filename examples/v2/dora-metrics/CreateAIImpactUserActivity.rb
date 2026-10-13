# Send AI tool user activity returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::DORAMetricsAPI.new

body = DatadogAPIClient::V2::AIImpactUserActivityRequest.new({
  data: [
    DatadogAPIClient::V2::AIImpactUserActivityData.new({
      attributes: DatadogAPIClient::V2::AIImpactUserActivityAttributes.new({
        day: "2026-05-26",
        is_active: true,
        models: [
          "claude-sonnet-4.5",
          "gpt-5",
        ],
        tools: [
          "Claude Code",
          "Cursor",
        ],
        user_email: "user@example.com",
      }),
      type: DatadogAPIClient::V2::AIImpactUserActivityType::AI_IMPACT_USER_ACTIVITY,
    }),
  ],
})
p api_instance.create_ai_impact_user_activity(body)
