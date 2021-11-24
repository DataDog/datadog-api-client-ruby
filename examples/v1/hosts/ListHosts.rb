# Get all hosts for your organization returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::HostsAPI.new
opts = {
  filter: "env:ci",
}
p api_instance.list_hosts(opts)
