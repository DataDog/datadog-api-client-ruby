# List GCP scan options returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AgentlessScanningAPI.new
p api_instance.list_gcp_scan_options()
