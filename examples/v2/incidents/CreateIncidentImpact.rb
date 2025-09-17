# Create an incident impact returns "CREATED" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_incident_impact".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

# there is a valid "incident" in the system
INCIDENT_DATA_ID = ENV["INCIDENT_DATA_ID"]

body = DatadogAPIClient::V2::IncidentImpactCreateRequest.new({
  data: DatadogAPIClient::V2::IncidentImpactCreateData.new({
    type: DatadogAPIClient::V2::IncidentImpactType::INCIDENT_IMPACTS,
    attributes: DatadogAPIClient::V2::IncidentImpactCreateAttributes.new({
      start_at: "2025-09-12T13:50:00.000Z",
      end_at: "2025-09-12T14:50:00.000Z",
      description: "Outage in the us-east-1 region",
    }),
  }),
})
p api_instance.create_incident_impact(INCIDENT_DATA_ID, body)
