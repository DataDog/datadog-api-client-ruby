# Create an OAuth2 client credentials auth method returns "CREATED" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::WebhooksIntegrationAPI.new

body = DatadogAPIClient::V2::WebhooksOAuth2ClientCredentialsCreateRequest.new({
  data: DatadogAPIClient::V2::WebhooksOAuth2ClientCredentialsCreateData.new({
    attributes: DatadogAPIClient::V2::WebhooksOAuth2ClientCredentialsCreateAttributes.new({
      access_token_url: "https://example.com/oauth/token",
      audience: "https://api.example.com",
      client_id: "my-client-id",
      client_secret: "my-client-secret",
      name: "my-oauth2-auth",
      scope: "read:webhooks write:webhooks",
    }),
    type: DatadogAPIClient::V2::WebhooksOAuth2ClientCredentialsType::WEBHOOKS_AUTH_METHOD_OAUTH2_CLIENT_CREDENTIALS,
  }),
})
p api_instance.create_o_auth2_client_credentials(body)
