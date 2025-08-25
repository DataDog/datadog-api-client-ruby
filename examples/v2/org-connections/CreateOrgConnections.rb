# Create Org Connection returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OrgConnectionsAPI.new

body = DatadogAPIClient::V2::OrgConnectionCreateRequest.new({
  data: DatadogAPIClient::V2::OrgConnectionCreate.new({
    type: DatadogAPIClient::V2::OrgConnectionType::ORG_CONNECTION,
    relationships: DatadogAPIClient::V2::OrgConnectionCreateRelationships.new({
      sink_org: DatadogAPIClient::V2::OrgConnectionOrgRelationship.new({
        data: DatadogAPIClient::V2::OrgConnectionOrgRelationshipData.new({
          type: DatadogAPIClient::V2::OrgConnectionOrgRelationshipDataType::ORGS,
          id: "83999dcd-7f97-11f0-8de1-1ecf66f1aa85",
        }),
      }),
    }),
    attributes: DatadogAPIClient::V2::OrgConnectionCreateAttributes.new({
      connection_types: [
        DatadogAPIClient::V2::OrgConnectionTypeEnum::LOGS,
      ],
    }),
  }),
})
p api_instance.create_org_connections(body)
