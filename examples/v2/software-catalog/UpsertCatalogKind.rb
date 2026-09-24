# Create or update kinds returns "ACCEPTED" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::SoftwareCatalogAPI.new

body = DatadogAPIClient::V2::KindObj.new({
  kind: "my-job",
})
p api_instance.upsert_catalog_kind(body)
