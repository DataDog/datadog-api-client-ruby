# Create an AuthN Mapping returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AuthNMappingsAPI.new

# there is a valid "role" in the system
ROLE_DATA_ID = ENV["ROLE_DATA_ID"]

body = DatadogAPIClient::V2::AuthNMappingCreateRequest.new({
  data: DatadogAPIClient::V2::AuthNMappingCreateData.new({
    attributes: DatadogAPIClient::V2::AuthNMappingCreateAttributes.new({
      attribute_key: "exampleauthnmapping",
      attribute_value: "Example-AuthN-Mapping",
    }),
    relationships: DatadogAPIClient::V2::AuthNMappingRelationshipToRole.new({
      role: DatadogAPIClient::V2::RelationshipToRole.new({
        data: DatadogAPIClient::V2::RelationshipToRoleData.new({
          id: ROLE_DATA_ID,
          type: DatadogAPIClient::V2::RolesType::ROLES,
        }),
      }),
    }),
    type: DatadogAPIClient::V2::AuthNMappingsType::AUTHN_MAPPINGS,
  }),
})
p api_instance.create_authn_mapping(body)
