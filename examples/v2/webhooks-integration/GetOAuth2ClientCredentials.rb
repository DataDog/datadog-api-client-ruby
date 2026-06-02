# Get an OAuth2 client credentials auth method returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::WebhooksIntegrationAPI.new
p api_instance.get_o_auth2_client_credentials("auth_method_id")
