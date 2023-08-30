# Get all monitor details returns "OK" response with pagination

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::MonitorsAPI.new
opts = {
  page_size: 2,
}
api_instance.list_monitors_with_pagination(opts) { |item| puts item }
