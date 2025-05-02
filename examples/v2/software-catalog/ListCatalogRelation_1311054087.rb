# Get a list of entity relations returns "OK" response with pagination

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SoftwareCatalogAPI.new
api_instance.list_catalog_relation_with_pagination() { |item| puts item }
