# Get all downtimes returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::DowntimesAPI.new
p api_instance.list_downtimes()
