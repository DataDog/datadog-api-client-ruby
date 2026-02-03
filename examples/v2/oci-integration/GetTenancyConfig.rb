# Get tenancy config returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OCIIntegrationAPI.new
p api_instance.get_tenancy_config("tenancy_ocid")
