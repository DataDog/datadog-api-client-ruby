# Get a list of entity kinds returns "OK" response with pagination

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SoftwareCatalogAPI.new
api_instance.list_catalog_kind_with_pagination() { |item| puts item }
