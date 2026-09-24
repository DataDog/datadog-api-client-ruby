# Get all auth methods returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::WebhooksIntegrationAPI.new
p api_instance.get_all_auth_methods()
