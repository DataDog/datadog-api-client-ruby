# Update a SAML configuration returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OrganizationsAPI.new

body = DatadogAPIClient::V2::SAMLConfigurationUpdateRequest.new({
  data: DatadogAPIClient::V2::SAMLConfigurationUpdateData.new({
    attributes: DatadogAPIClient::V2::SAMLConfigurationUpdateAttributes.new({
      idp_initiated: true,
      jit_domains: [
        "example.com",
      ],
    }),
    id: "3653d3c6-0c75-11ea-ad28-fb5701eabc7d",
    relationships: DatadogAPIClient::V2::SAMLConfigurationRelationships.new({
      default_roles: DatadogAPIClient::V2::RelationshipToRoles.new({
        data: [
          DatadogAPIClient::V2::RelationshipToRoleData.new({
            id: "3653d3c6-0c75-11ea-ad28-fb5701eabc7d",
            type: DatadogAPIClient::V2::RolesType::ROLES,
          }),
        ],
      }),
    }),
    type: DatadogAPIClient::V2::SAMLConfigurationsType::SAML_CONFIGURATIONS,
  }),
})
p api_instance.update_saml_configuration("3653d3c6-0c75-11ea-ad28-fb5701eabc7d", body)
