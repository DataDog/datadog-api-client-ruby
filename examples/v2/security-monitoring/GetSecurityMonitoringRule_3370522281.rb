# Get a cloud configuration rule's details returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

# there is a valid "cloud_configuration_rule" in the system
CLOUD_CONFIGURATION_RULE_ID = ENV["CLOUD_CONFIGURATION_RULE_ID"]
p api_instance.get_security_monitoring_rule(CLOUD_CONFIGURATION_RULE_ID)
