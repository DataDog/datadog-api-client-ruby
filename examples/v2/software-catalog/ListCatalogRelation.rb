# Get a list of entity relations returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::SoftwareCatalogAPI.new
p api_instance.list_catalog_relation()
