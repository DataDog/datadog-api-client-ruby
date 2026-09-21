# Preview catalog entities returns "Accepted" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::SoftwareCatalogAPI.new
p api_instance.preview_catalog_entities()
