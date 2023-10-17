# Get active downtimes for a monitor returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::DowntimesAPI.new
p api_instance.list_monitor_downtimes(35534610)
