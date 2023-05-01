# Create a service account returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ServiceAccountsAPI.new

# there is a valid "role" in the system
ROLE_DATA_ID = ENV["ROLE_DATA_ID"]

body = DatadogAPIClient::V2::ServiceAccountCreateRequest.new({
  data: DatadogAPIClient::V2::ServiceAccountCreateData.new({
    type: DatadogAPIClient::V2::UsersType::USERS,
    attributes: DatadogAPIClient::V2::ServiceAccountCreateAttributes.new({
      name: "Test API Client",
      email: "Example-Service-Account@datadoghq.com",
      service_account: true,
    }),
    relationships: DatadogAPIClient::V2::UserRelationships.new({
      roles: DatadogAPIClient::V2::RelationshipToRoles.new({
        data: [
          DatadogAPIClient::V2::RelationshipToRoleData.new({
            id: ROLE_DATA_ID,
            type: DatadogAPIClient::V2::RolesType::ROLES,
          }),
        ],
      }),
    }),
  }),
})
p api_instance.create_service_account(body)
