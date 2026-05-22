# Create or update incident automation data returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.upsert_incident_automation_data".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

body = DatadogAPIClient::V2::IncidentAutomationDataRequest.new({
  data: DatadogAPIClient::V2::IncidentAutomationDataDataRequest.new({
    attributes: DatadogAPIClient::V2::IncidentAutomationDataAttributesRequest.new({
      value: "completed",
    }),
    type: DatadogAPIClient::V2::IncidentAutomationDataType::INCIDENTS_AUTOMATION_DATA,
  }),
})
p api_instance.upsert_incident_automation_data("incident_id", "key", body)
