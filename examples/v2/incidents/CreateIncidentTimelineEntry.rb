# Create an incident timeline entry returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_incident_timeline_entry".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

body = DatadogAPIClient::V2::IncidentTimelineEntryRequest.new({
  data: DatadogAPIClient::V2::IncidentTimelineEntryDataRequest.new({
    attributes: DatadogAPIClient::V2::IncidentTimelineEntryDataAttributesRequest.new({
      cell_type: DatadogAPIClient::V2::IncidentTimelineCellType::MARKDOWN,
      content: DatadogAPIClient::V2::IncidentTimelineEntryContent.new({
        message: "Investigating the issue.",
      }),
      display_time: "2024-01-01T00:00:00.000Z",
      important: false,
    }),
    type: DatadogAPIClient::V2::IncidentTimelineEntryType::INCIDENT_TIMELINE_CELLS,
  }),
})
p api_instance.create_incident_timeline_entry("incident_id", body)
