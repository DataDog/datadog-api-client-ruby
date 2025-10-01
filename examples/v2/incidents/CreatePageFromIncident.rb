# Create a page from an incident returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_page_from_incident".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

body = DatadogAPIClient::V2::IncidentCreatePageFromIncidentRequest.new({
  data: DatadogAPIClient::V2::IncidentCreatePageFromIncidentData.new({
    attributes: DatadogAPIClient::V2::IncidentCreatePageAttributes.new({
      description: "Page created for incident response",
      services: [
        "web-service",
        "api-service",
      ],
      tags: [
        "urgent",
        "production",
      ],
      target: DatadogAPIClient::V2::IncidentPageTarget.new({
        identifier: "team-handle",
        type: DatadogAPIClient::V2::IncidentPageTargetType::TEAM_HANDLE,
      }),
      title: "Incident Response Page",
    }),
    type: DatadogAPIClient::V2::IncidentPageType::PAGE,
  }),
})
p api_instance.create_page_from_incident("incident_id", body)
