# Delete a Custom OIDC provider returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.delete_oidc_cloud_auth_provider".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CloudAuthenticationAPI.new

# there is a valid "oidc_cloud_auth_provider" in the system
OIDC_CLOUD_AUTH_PROVIDER_DATA_ID = ENV["OIDC_CLOUD_AUTH_PROVIDER_DATA_ID"]
api_instance.delete_oidc_cloud_auth_provider(OIDC_CLOUD_AUTH_PROVIDER_DATA_ID)
