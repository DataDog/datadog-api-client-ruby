# Upsert an OAuth2 client scopes restriction returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.upsert_scopes_restriction".to_sym] = true
end
api_instance = DatadogAPIClient::V2::OAuth2ClientPublicAPI.new

body = DatadogAPIClient::V2::UpsertOAuthScopesRestrictionRequest.new({
  data: DatadogAPIClient::V2::UpsertOAuthScopesRestrictionData.new({
    attributes: DatadogAPIClient::V2::UpsertOAuthScopesRestrictionDataAttributes.new({
      oidc_scopes: [
        DatadogAPIClient::V2::OAuthOidcScope::OPENID,
        DatadogAPIClient::V2::OAuthOidcScope::EMAIL,
      ],
      permission_scopes: [
        "dashboards_read",
        "metrics_read",
      ],
    }),
    type: DatadogAPIClient::V2::UpsertOAuthScopesRestrictionType::UPSERT_SCOPES_RESTRICTION,
  }),
})
p api_instance.upsert_scopes_restriction("fafa8e1c-36a5-11f0-a83d-da7ad0900001", body)
