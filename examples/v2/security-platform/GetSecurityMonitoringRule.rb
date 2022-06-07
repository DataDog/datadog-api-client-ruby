# Get a rule's details returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityPlatformAPI.new
p api_instance.get_security_monitoring_rule("rule_id")
