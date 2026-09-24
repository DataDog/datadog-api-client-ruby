# List users with an identity provider override returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::IdentityProvidersAPI.new
p api_instance.list_identity_provider_users("00000000-0000-0000-0000-000000000001")
