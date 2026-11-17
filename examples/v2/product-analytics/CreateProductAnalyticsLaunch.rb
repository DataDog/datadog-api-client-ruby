# Create a Product Analytics launch returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.create_product_analytics_launch".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ProductAnalyticsAPI.new

body = DatadogAPIClient::V2::ProductAnalyticsLaunchCreateRequest.new({
  data: DatadogAPIClient::V2::ProductAnalyticsLaunchCreateData.new({
    attributes: DatadogAPIClient::V2::ProductAnalyticsLaunchRequestAttributes.new({
      context: "Let users apply promo codes at checkout.",
      description: "Promo codes at checkout.",
      kpis: [
        DatadogAPIClient::V2::ProductAnalyticsLaunchKPI.new({
          id: "7c1e6a52-3a8f-4d4e-9a55-2f1d1c8b6a10",
          title: "Checkout conversion rate",
        }),
      ],
      name: "checkout_promo_codes",
      phase: DatadogAPIClient::V2::ProductAnalyticsLaunchPhase::PLAN,
      steps: DatadogAPIClient::V2::ProductAnalyticsLaunchStepsRequest.new({
        tracking_plan: DatadogAPIClient::V2::ProductAnalyticsLaunchTrackingPlanRequest.new({
          events: [
            DatadogAPIClient::V2::ProductAnalyticsLaunchEvent.new({
              kpis: [
                "7c1e6a52-3a8f-4d4e-9a55-2f1d1c8b6a10",
              ],
              name: "promo_code_applied",
              trigger: "The user applies a valid promo code.",
              views: [
                "/checkout",
              ],
            }),
          ],
        }),
      }),
    }),
    type: DatadogAPIClient::V2::ProductAnalyticsLaunchType::LIFTOFF,
  }),
})
p api_instance.create_product_analytics_launch(body)
