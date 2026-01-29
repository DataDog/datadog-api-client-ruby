# Link incident to case returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.link_incident".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new

body = DatadogAPIClient::V2::RelationshipToIncidentRequest.new({
  data: DatadogAPIClient::V2::IncidentRelationshipData.new({
    id: "00000000-0000-0000-0000-000000000000",
    type: DatadogAPIClient::V2::IncidentResourceType::INCIDENTS,
  }),
})
p api_instance.link_incident("case_id", body)
