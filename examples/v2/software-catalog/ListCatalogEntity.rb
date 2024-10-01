# Get a list of entities returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SoftwareCatalogAPI.new
p api_instance.list_catalog_entity()
