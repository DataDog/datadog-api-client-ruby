# List Fastly accounts returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::FastlyIntegrationAPI.new
p api_instance.list_fastly_accounts()
