# Get details of an inbox rule returns "Inbox rule details" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

# there is a valid "valid_inbox_rule" in the system
VALID_INBOX_RULE_DATA_ID = ENV["VALID_INBOX_RULE_DATA_ID"]
p api_instance.get_inbox_rule(VALID_INBOX_RULE_DATA_ID)
