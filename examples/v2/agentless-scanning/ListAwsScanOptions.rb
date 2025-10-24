# List AWS scan options returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AgentlessScanningAPI.new
p api_instance.list_aws_scan_options()
