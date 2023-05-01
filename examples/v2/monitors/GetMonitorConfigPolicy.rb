# Get a monitor configuration policy returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MonitorsAPI.new

# there is a valid "monitor_configuration_policy" in the system
MONITOR_CONFIGURATION_POLICY_DATA_ID = ENV["MONITOR_CONFIGURATION_POLICY_DATA_ID"]
p api_instance.get_monitor_config_policy(MONITOR_CONFIGURATION_POLICY_DATA_ID)
