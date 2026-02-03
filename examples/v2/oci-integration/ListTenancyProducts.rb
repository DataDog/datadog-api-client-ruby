# List tenancy products returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OCIIntegrationAPI.new
p api_instance.list_tenancy_products("productKeys")
