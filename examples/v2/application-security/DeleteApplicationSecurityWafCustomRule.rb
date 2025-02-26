# Delete a WAF Custom Rule returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ApplicationSecurityAPI.new
api_instance.delete_application_security_waf_custom_rule("custom_rule_id")
