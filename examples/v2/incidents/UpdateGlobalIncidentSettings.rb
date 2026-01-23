# Update global incident settings returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_global_incident_settings".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

body = DatadogAPIClient::V2::GlobalIncidentSettingsRequest.new({
  data: DatadogAPIClient::V2::GlobalIncidentSettingsDataRequest.new({
    attributes: DatadogAPIClient::V2::GlobalIncidentSettingsAttributesRequest.new({
      analytics_dashboard_id: "abc-123-def",
    }),
    type: DatadogAPIClient::V2::GlobalIncidentSettingsType::INCIDENTS_GLOBAL_SETTINGS,
  }),
})
p api_instance.update_global_incident_settings(body)
