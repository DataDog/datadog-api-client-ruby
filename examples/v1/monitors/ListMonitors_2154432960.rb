# Get all monitors with tags

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V1::MonitorsAPI.new
opts = {
  tags: "test:examplemonitor",
  page_size: 1,
}
p api_instance.list_monitors(opts)
