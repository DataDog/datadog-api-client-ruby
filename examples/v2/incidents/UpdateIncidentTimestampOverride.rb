# Update a timestamp override for an incident returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_incident_timestamp_override".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

body = DatadogAPIClient::V2::IncidentTimestampOverridePatchRequest.new({
  data: DatadogAPIClient::V2::IncidentTimestampOverridePatchData.new({
    attributes: DatadogAPIClient::V2::IncidentTimestampOverridePatchAttributes.new({
      timestamp_value: "2024-12-29T11:00:00Z",
    }),
    type: DatadogAPIClient::V2::IncidentsTimestampOverridesType::INCIDENTS_TIMESTAMP_OVERRIDES,
  }),
})
p api_instance.update_incident_timestamp_override("9cecfde8-e35d-4387-8985-9b30dcb9cb1c", "6f48a86f-9a39-4bcf-a76b-9a1b20188995", body)
