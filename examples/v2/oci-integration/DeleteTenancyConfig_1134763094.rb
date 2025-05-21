# Delete tenancy config for non-existing tenancy returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OCIIntegrationAPI.new
api_instance.delete_tenancy_config("ocid1.tenancy.fake")
