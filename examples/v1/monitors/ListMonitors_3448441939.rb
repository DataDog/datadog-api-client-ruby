# Get all monitor details with tags

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::MonitorsAPI.new
opts = {
  tags: "test:examplemonitor",
  page_size: 1,
}
p api_instance.list_monitors(opts)
