# Create a Custom OIDC provider returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.create_oidc_cloud_auth_provider".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CloudAuthenticationAPI.new

body = DatadogAPIClient::V2::OIDCCloudAuthProviderCreateRequest.new({
  data: DatadogAPIClient::V2::OIDCCloudAuthProviderCreateData.new({
    type: DatadogAPIClient::V2::OIDCCloudAuthProviderType::CUSTOM_OIDC_PROVIDER_CONFIG,
    attributes: DatadogAPIClient::V2::OIDCCloudAuthProviderCreateAttributes.new({
      provider_name: "oidc-de20b7e944abfac3",
      issuer_url: "https://oidc-de20b7e944abfac3.example.com",
      discovery_type: DatadogAPIClient::V2::OIDCCloudAuthDiscoveryType::OIDC_DISCOVERY,
      audiences: [
        "sdk-test",
      ],
    }),
  }),
})
p api_instance.create_oidc_cloud_auth_provider(body)
