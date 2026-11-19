# Create an HCP Terraform persona mapping returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.create_terraform_cloud_auth_persona_mapping".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CloudAuthenticationAPI.new

# there is a valid "service_account_user_with_role" in the system
SERVICE_ACCOUNT_USER_WITH_ROLE_DATA_ATTRIBUTES_EMAIL = ENV["SERVICE_ACCOUNT_USER_WITH_ROLE_DATA_ATTRIBUTES_EMAIL"]

body = DatadogAPIClient::V2::TerraformCloudAuthPersonaMappingCreateRequest.new({
  data: DatadogAPIClient::V2::TerraformCloudAuthPersonaMappingCreateData.new({
    type: DatadogAPIClient::V2::TerraformCloudAuthPersonaMappingType::TERRAFORM_CLOUD_AUTH_CONFIG,
    attributes: DatadogAPIClient::V2::TerraformCloudAuthPersonaMappingCreateAttributes.new({
      issuer_url: DatadogAPIClient::V2::TerraformCloudAuthIssuerURL::US,
      sub_pattern: "organization:datadog-api-spec:project:Default Project:workspace:sdk-examplecloudauthentication:run_phase:*",
      account_identifier: SERVICE_ACCOUNT_USER_WITH_ROLE_DATA_ATTRIBUTES_EMAIL,
    }),
  }),
})
p api_instance.create_terraform_cloud_auth_persona_mapping(body)
