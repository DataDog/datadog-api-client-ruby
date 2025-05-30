# Create or update kinds returns "ACCEPTED" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SoftwareCatalogAPI.new

body = DatadogAPIClient::V2::KindObj.new({
  kind: "my-job",
})
p api_instance.upsert_catalog_kind(body)
