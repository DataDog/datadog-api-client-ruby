# Edit an AuthN Mapping returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AuthNMappingsAPI.new

# there is a valid "authn_mapping" in the system
AUTHN_MAPPING_DATA_ID = ENV["AUTHN_MAPPING_DATA_ID"]

# there is a valid "role" in the system
ROLE_DATA_ID = ENV["ROLE_DATA_ID"]

body = DatadogAPIClient::V2::AuthNMappingUpdateRequest.new({
  data: DatadogAPIClient::V2::AuthNMappingUpdateData.new({
    attributes: DatadogAPIClient::V2::AuthNMappingUpdateAttributes.new({
      attribute_key: "member-of",
      attribute_value: "Development",
    }),
    id: AUTHN_MAPPING_DATA_ID,
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
p api_instance.update_authn_mapping(AUTHN_MAPPING_DATA_ID, body)
