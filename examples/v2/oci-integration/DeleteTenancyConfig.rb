# Delete tenancy config returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OCIIntegrationAPI.new
api_instance.delete_tenancy_config("tenancy_ocid")
