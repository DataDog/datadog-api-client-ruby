# Get all notebooks returns "OK" response with pagination

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::NotebooksAPI.new
opts = {
  count: 2,
}
api_instance.list_notebooks_with_pagination(opts) { |item| puts item }
