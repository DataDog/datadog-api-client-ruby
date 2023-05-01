# Get IP Allowlist returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::IPAllowlistAPI.new
p api_instance.get_ip_allowlist()
