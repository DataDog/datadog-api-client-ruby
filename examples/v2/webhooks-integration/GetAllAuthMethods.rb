# Get all auth methods returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::WebhooksIntegrationAPI.new
p api_instance.get_all_auth_methods()
