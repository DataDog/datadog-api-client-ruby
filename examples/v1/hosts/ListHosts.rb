# Get all hosts for your organization returns "OK" response

require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::HostsAPI.new
opts = { filter: 'env:ci', include_hosts_metadata: true }
p api_instance.list_hosts(opts)
