# Delete a mute rule returns "Rule successfully deleted" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

# there is a valid "valid_mute_rule" in the system
VALID_MUTE_RULE_DATA_ID = ENV["VALID_MUTE_RULE_DATA_ID"]
api_instance.delete_mute_rule(VALID_MUTE_RULE_DATA_ID)
