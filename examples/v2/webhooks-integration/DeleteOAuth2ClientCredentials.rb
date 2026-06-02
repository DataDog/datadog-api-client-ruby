# Delete an OAuth2 client credentials auth method returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::WebhooksIntegrationAPI.new
api_instance.delete_o_auth2_client_credentials("auth_method_id")
