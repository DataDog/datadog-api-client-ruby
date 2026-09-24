# Get all hosts with metadata deserializes successfully

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V1::HostsAPI.new
opts = {
  include_hosts_metadata: true,
}
p api_instance.list_hosts(opts)
