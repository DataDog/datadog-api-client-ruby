# Get a list of metrics returns "Success" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MetricsAPI.new
p api_instance.list_tag_configurations()
