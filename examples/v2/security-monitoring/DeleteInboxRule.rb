# Delete an inbox rule returns "Rule successfully deleted" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

# there is a valid "valid_inbox_rule" in the system
VALID_INBOX_RULE_DATA_ID = ENV["VALID_INBOX_RULE_DATA_ID"]
api_instance.delete_inbox_rule(VALID_INBOX_RULE_DATA_ID)
