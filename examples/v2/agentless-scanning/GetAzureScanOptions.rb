# Get Azure scan options returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AgentlessScanningAPI.new
p api_instance.get_azure_scan_options("12345678-90ab-cdef-1234-567890abcdef")
