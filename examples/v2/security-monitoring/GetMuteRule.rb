# Get details of a mute rule returns "Mute rule details" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

# there is a valid "valid_mute_rule" in the system
VALID_MUTE_RULE_DATA_ID = ENV["VALID_MUTE_RULE_DATA_ID"]
p api_instance.get_mute_rule(VALID_MUTE_RULE_DATA_ID)
