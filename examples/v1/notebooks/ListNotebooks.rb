# Get all notebooks returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::NotebooksAPI.new
p api_instance.list_notebooks()
