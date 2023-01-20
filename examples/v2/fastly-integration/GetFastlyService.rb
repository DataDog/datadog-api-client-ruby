# Get Fastly service returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::FastlyIntegrationAPI.new
p api_instance.get_fastly_service("account_id", "service_id")
