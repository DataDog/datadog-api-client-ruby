# Delete Azure scan options returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AgentlessScanningAPI.new
api_instance.delete_azure_scan_options("12345678-90ab-cdef-1234-567890abcdef")
