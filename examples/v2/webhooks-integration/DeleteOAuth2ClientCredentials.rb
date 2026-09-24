# Delete an OAuth2 client credentials auth method returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::WebhooksIntegrationAPI.new
api_instance.delete_o_auth2_client_credentials("auth_method_id")
