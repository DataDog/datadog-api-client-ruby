# Get a WAF Policy returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ApplicationSecurityAPI.new

# there is a valid "policy" in the system
POLICY_DATA_ID = ENV["POLICY_DATA_ID"]
p api_instance.get_application_security_waf_policy(POLICY_DATA_ID)
