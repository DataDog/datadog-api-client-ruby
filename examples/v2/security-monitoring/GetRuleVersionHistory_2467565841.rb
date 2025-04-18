# Get rule version history returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

# there is a valid "security_rule" in the system
SECURITY_RULE_ID = ENV["SECURITY_RULE_ID"]
p api_instance.get_rule_version_history(SECURITY_RULE_ID)
