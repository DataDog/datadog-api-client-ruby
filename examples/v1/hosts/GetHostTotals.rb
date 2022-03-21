# Get the total number of active hosts returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::HostsAPI.new
p api_instance.get_host_totals()
