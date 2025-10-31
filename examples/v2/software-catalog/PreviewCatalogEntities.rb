# Preview catalog entities returns "Accepted" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SoftwareCatalogAPI.new
p api_instance.preview_catalog_entities()
