# Create postmortem for an incident returns "CREATED" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_incident_postmortem".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

# there is a valid "incident" in the system
INCIDENT_DATA_ID = ENV["INCIDENT_DATA_ID"]

body = DatadogAPIClient::V2::IncidentPostmortemCreateRequest.new({
  data: DatadogAPIClient::V2::IncidentPostmortemCreateData.new({
    attributes: DatadogAPIClient::V2::IncidentPostmortemCreateAttributes.new({
      document_url: "https://app.datadoghq.com/notebook/123",
      title: "Postmortem for IR-123",
    }),
    type: DatadogAPIClient::V2::IncidentPostmortemType::INCIDENT_POSTMORTEMS,
  }),
})
p api_instance.create_incident_postmortem(INCIDENT_DATA_ID, body)
