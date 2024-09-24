# Get a list of metrics returns "Success" response with pagination

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MetricsAPI.new
api_instance.list_tag_configurations_with_pagination() { |item| puts item }
