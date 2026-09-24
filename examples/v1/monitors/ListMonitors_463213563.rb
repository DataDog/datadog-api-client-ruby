# Get all monitors returns "OK" response with pagination

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V1::MonitorsAPI.new
opts = {
  page_size: 2,
}
api_instance.list_monitors_with_pagination(opts) { |item| puts item }
