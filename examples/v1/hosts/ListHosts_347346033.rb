# Get all hosts with metadata deserializes successfully

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::HostsAPI.new
opts = {
  include_hosts_metadata: true,
}
p api_instance.list_hosts(opts)
