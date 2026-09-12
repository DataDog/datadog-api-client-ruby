# Update the MCP Cross-App Access issuer URL returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_login_org_configs_mcp_cross_app_access_issuer_url".to_sym] = true
end
api_instance = DatadogAPIClient::V2::OrganizationsAPI.new

body = DatadogAPIClient::V2::McpCrossAppAccessIssuerUrlUpdateRequest.new({
  data: DatadogAPIClient::V2::McpCrossAppAccessIssuerUrlUpdateData.new({
    attributes: DatadogAPIClient::V2::McpCrossAppAccessIssuerUrlUpdateAttributes.new({
      issuer_url: "https://your-subdomain.okta.com",
    }),
    type: DatadogAPIClient::V2::McpCrossAppAccessIssuerUrlType::ORG_CONFIG,
  }),
})
api_instance.update_login_org_configs_mcp_cross_app_access_issuer_url(body)
