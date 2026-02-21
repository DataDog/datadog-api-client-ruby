# Import an incident returns "CREATED" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.import_incident".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

body = DatadogAPIClient::V2::IncidentImportRequest.new({
  data: DatadogAPIClient::V2::IncidentImportRequestData.new({
    type: DatadogAPIClient::V2::IncidentType::INCIDENTS,
    attributes: DatadogAPIClient::V2::IncidentImportRequestAttributes.new({
      declared: "2025-01-01T00:00:00Z",
      detected: "2025-01-01T00:00:00Z",
      title: "Example-Incident",
      visibility: DatadogAPIClient::V2::IncidentImportVisibility::ORGANIZATION,
    }),
  }),
})
p api_instance.import_incident(body)
