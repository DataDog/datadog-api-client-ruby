# Get tenancy config returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OCIIntegrationAPI.new

# there is a valid "oci_tenancy" resource in the system
OCI_TENANCY_DATA_ID = ENV["OCI_TENANCY_DATA_ID"]
p api_instance.get_tenancy_config(OCI_TENANCY_DATA_ID)
