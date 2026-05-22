# Update a Statuspage incident for an incident returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_incident_statuspage_incident".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

body = DatadogAPIClient::V2::IncidentStatuspageIncidentRequest.new({
  data: DatadogAPIClient::V2::IncidentStatuspageIncidentDataRequest.new({
    attributes: DatadogAPIClient::V2::IncidentStatuspageIncidentDataAttributesRequest.new({
      body: "We are investigating the issue.",
      deliver_notifications: true,
      impact: "major",
      name: "Service Outage",
      page_id: "abc123",
      status: "investigating",
    }),
    type: DatadogAPIClient::V2::IncidentStatuspageIncidentType::INCIDENT_INTEGRATIONS,
  }),
})
p api_instance.update_incident_statuspage_incident("incident_id", "page_id", "statuspage_incident_id", body)
