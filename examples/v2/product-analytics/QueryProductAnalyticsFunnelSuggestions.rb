# Get feature suggestions returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.query_product_analytics_funnel_suggestions".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ProductAnalyticsAPI.new

body = DatadogAPIClient::V2::ProductAnalyticsFunnelSuggestionsRequest.new({
  data: DatadogAPIClient::V2::ProductAnalyticsFunnelSuggestionsRequestData.new({
    attributes: DatadogAPIClient::V2::ProductAnalyticsFunnelSuggestionsRequestAttributes.new({
      application_id: "40d8ca4b-2ac0-481f-b16e-f110699ecff6",
    }),
    type: DatadogAPIClient::V2::ProductAnalyticsFunnelSuggestionsRequestType::FUNNEL_SUGGESTIONS_REQUEST,
  }),
})
p api_instance.query_product_analytics_funnel_suggestions(body)
