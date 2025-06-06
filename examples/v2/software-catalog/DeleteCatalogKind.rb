# Delete a single kind returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SoftwareCatalogAPI.new
api_instance.delete_catalog_kind("my-job")
