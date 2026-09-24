# Delete a single entity returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::SoftwareCatalogAPI.new
api_instance.delete_catalog_entity("service:myservice")
