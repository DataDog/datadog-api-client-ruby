# Get GCP scan options returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AgentlessScanningAPI.new
p api_instance.get_gcp_scan_options("api-spec-test")
