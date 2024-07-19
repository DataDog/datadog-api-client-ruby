# Convert an existing rule from JSON to Terraform returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

# there is a valid "security_rule" in the system
SECURITY_RULE_ID = ENV["SECURITY_RULE_ID"]
p api_instance.convert_existing_security_monitoring_rule(SECURITY_RULE_ID)
