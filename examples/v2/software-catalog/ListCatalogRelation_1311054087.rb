# Get a list of entity relations returns "OK" response with pagination

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SoftwareCatalogAPI.new
opts = {
  page_limit: 20,
}
api_instance.list_catalog_relation_with_pagination(opts) { |item| puts item }
