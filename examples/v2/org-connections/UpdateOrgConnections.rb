# Update Org Connection returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OrgConnectionsAPI.new

# there is a valid "org_connection" in the system
ORG_CONNECTION_DATA_ID = ENV["ORG_CONNECTION_DATA_ID"]

body = DatadogAPIClient::V2::OrgConnectionUpdateRequest.new({
  data: DatadogAPIClient::V2::OrgConnectionUpdate.new({
    type: DatadogAPIClient::V2::OrgConnectionType::ORG_CONNECTION,
    id: ORG_CONNECTION_DATA_ID,
    attributes: DatadogAPIClient::V2::OrgConnectionUpdateAttributes.new({
      connection_types: [
        DatadogAPIClient::V2::OrgConnectionTypeEnum::LOGS,
        DatadogAPIClient::V2::OrgConnectionTypeEnum::METRICS,
      ],
    }),
  }),
})
p api_instance.update_org_connections(ORG_CONNECTION_DATA_ID, body)
