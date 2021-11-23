# List IP Ranges returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::IPRangesAPI.new
p api_instance.get_ip_ranges()
