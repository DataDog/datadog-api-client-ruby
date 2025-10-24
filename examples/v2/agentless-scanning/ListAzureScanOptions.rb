# List Azure scan options returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AgentlessScanningAPI.new
p api_instance.list_azure_scan_options()
