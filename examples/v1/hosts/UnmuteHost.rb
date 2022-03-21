# Unmute a host returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::HostsAPI.new
p api_instance.unmute_host("host_name")
