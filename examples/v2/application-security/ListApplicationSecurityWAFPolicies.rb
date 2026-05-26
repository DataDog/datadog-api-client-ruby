# List all WAF policies returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ApplicationSecurityAPI.new
p api_instance.list_application_security_waf_policies()
