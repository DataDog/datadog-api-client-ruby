# Get a list of metrics returns "Success" response with pagination

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MetricsAPI.new
opts = {
  page_size: 2,
}
api_instance.list_tag_configurations_with_pagination(opts) { |item| puts item }
