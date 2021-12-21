# Get a synthetics monitor's details

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::MonitorsAPI.new

# there is a valid "synthetics_api_test" in the system
SYNTHETICS_API_TEST_MONITOR_ID = ENV["SYNTHETICS_API_TEST_MONITOR_ID"]
p api_instance.get_monitor(SYNTHETICS_API_TEST_MONITOR_ID.to_i)
