# Get funnel step suggestions returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.query_product_analytics_funnel_step_suggestions".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ProductAnalyticsAPI.new

body = DatadogAPIClient::V2::ProductAnalyticsFunnelStepSuggestionsRequest.new({
  data: DatadogAPIClient::V2::ProductAnalyticsFunnelStepSuggestionsRequestData.new({
    attributes: DatadogAPIClient::V2::ProductAnalyticsFunnelStepSuggestionsRequestAttributes.new({
      application_id: "40d8ca4b-2ac0-481f-b16e-f110699ecff6",
      expression: "node_01->node_02",
      steps: {
        node_01: "@type:view @view.name:/checkout", node_02: "@type:action @action.name:pay",
      },
    }),
    type: DatadogAPIClient::V2::ProductAnalyticsFunnelStepSuggestionsRequestType::FUNNEL_SUGGESTIONS_STEPS_REQUEST,
  }),
})
p api_instance.query_product_analytics_funnel_step_suggestions(body)
