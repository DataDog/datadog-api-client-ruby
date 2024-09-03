# Get a list of entities returns "OK" response with pagination

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SoftwareCatalogAPI.new
api_instance.list_catalog_entity_with_pagination() { |item| puts item }
