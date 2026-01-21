# Create or update HAMR organization connection returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_hamr_org_connection".to_sym] = true
end
api_instance = DatadogAPIClient::V2::HighAvailabilityMultiRegionAPI.new

body = DatadogAPIClient::V2::HamrOrgConnectionRequest.new({
  data: DatadogAPIClient::V2::HamrOrgConnectionDataRequest.new({
    attributes: DatadogAPIClient::V2::HamrOrgConnectionAttributesRequest.new({
      hamr_status: DatadogAPIClient::V2::HamrOrgConnectionStatus::ACTIVE,
      is_primary: true,
      modified_by: "admin@example.com",
      target_org_datacenter: "us1",
      target_org_name: "Production Backup Org",
      target_org_uuid: "660f9511-f3ac-52e5-b827-557766551111",
    }),
    id: "550e8400-e29b-41d4-a716-446655440000",
    type: DatadogAPIClient::V2::HamrOrgConnectionType::HAMR_ORG_CONNECTIONS,
  }),
})
p api_instance.create_hamr_org_connection(body)
