# Delete a WAF Policy returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ApplicationSecurityAPI.new
api_instance.delete_application_security_waf_policy("policy_id")
