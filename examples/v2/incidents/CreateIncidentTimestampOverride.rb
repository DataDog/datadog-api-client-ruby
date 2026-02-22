# Create a timestamp override for an incident returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_incident_timestamp_override".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

body = DatadogAPIClient::V2::IncidentTimestampOverrideCreateRequest.new({
  data: DatadogAPIClient::V2::IncidentTimestampOverrideCreateData.new({
    attributes: DatadogAPIClient::V2::IncidentTimestampOverrideCreateAttributes.new({
      timestamp_type: DatadogAPIClient::V2::TimestampType::CREATED,
      timestamp_value: "2024-12-29T10:00:00Z",
    }),
    type: DatadogAPIClient::V2::IncidentsTimestampOverridesType::INCIDENTS_TIMESTAMP_OVERRIDES,
  }),
})
p api_instance.create_incident_timestamp_override("9cecfde8-e35d-4387-8985-9b30dcb9cb1c", body)
