# List status pages returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::StatusPagesAPI.new
p api_instance.list_status_pages()
