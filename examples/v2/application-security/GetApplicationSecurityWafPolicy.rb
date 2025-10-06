# Get a WAF Policy returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ApplicationSecurityAPI.new
p api_instance.get_application_security_waf_policy("policy_id")
