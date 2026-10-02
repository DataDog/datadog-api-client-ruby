# Get SPA recommendations v2 returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.get_spa_recommendations_v2".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SpaAPI.new

body = DatadogAPIClient::V2::RecommendationV2RequestBody.new({
  data: DatadogAPIClient::V2::RecommendationV2RequestData.new({
    attributes: DatadogAPIClient::V2::RecommendationV2RequestAttributes.new({
      arguments: [
        "",
      ],
    }),
    type: DatadogAPIClient::V2::RecommendationV2RequestType::RECOMMENDATION_V2_REQUEST,
  }),
})
p api_instance.get_spa_recommendations_v2("service", body)
