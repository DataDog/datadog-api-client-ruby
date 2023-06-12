# Get active downtimes for a monitor returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DowntimesAPI.new
p api_instance.list_monitor_downtimes(9223372036854775807)
