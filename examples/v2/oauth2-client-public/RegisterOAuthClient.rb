# Register an OAuth2 client returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.register_o_auth_client".to_sym] = true
end
api_instance = DatadogAPIClient::V2::OAuth2ClientPublicAPI.new

body = DatadogAPIClient::V2::OAuthClientRegistrationRequest.new({
  client_name: "Example MCP Client",
  client_uri: "https://example.com",
  grant_types: [
    DatadogAPIClient::V2::OAuthClientRegistrationGrantType::AUTHORIZATION_CODE,
    DatadogAPIClient::V2::OAuthClientRegistrationGrantType::REFRESH_TOKEN,
  ],
  jwks_uri: "https://example.com/.well-known/jwks.json",
  logo_uri: "https://example.com/logo.png",
  policy_uri: "https://example.com/privacy",
  redirect_uris: [
    "https://example.com/oauth/callback",
  ],
  response_types: [
    DatadogAPIClient::V2::OAuthClientRegistrationResponseType::CODE,
  ],
  scope: "openid profile",
  token_endpoint_auth_method: "none",
  tos_uri: "https://example.com/tos",
})
p api_instance.register_o_auth_client(body)
