# Decline recommended entities in bulk returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.decline_recommended_entities".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SoftwareCatalogAPI.new

body = [
  DatadogAPIClient::V2::RecommendedEntityID.new({
    id: "123abcdef",
  }),
]
api_instance.decline_recommended_entities(body)
