# Trigger recommended entity discovery returns "Accepted" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.trigger_recommended_entities".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SoftwareCatalogAPI.new
p api_instance.trigger_recommended_entities()
