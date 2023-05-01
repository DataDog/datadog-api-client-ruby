# Update an existing incident returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_incident".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

# there is a valid "incident" in the system
INCIDENT_DATA_ATTRIBUTES_TITLE = ENV["INCIDENT_DATA_ATTRIBUTES_TITLE"]
INCIDENT_DATA_ID = ENV["INCIDENT_DATA_ID"]

body = DatadogAPIClient::V2::IncidentUpdateRequest.new({
  data: DatadogAPIClient::V2::IncidentUpdateData.new({
    id: INCIDENT_DATA_ID,
    type: DatadogAPIClient::V2::IncidentType::INCIDENTS,
    attributes: DatadogAPIClient::V2::IncidentUpdateAttributes.new({
      fields: {
        state: DatadogAPIClient::V2::IncidentFieldAttributesSingleValue.new({
          type: DatadogAPIClient::V2::IncidentFieldAttributesSingleValueType::DROPDOWN,
          value: "resolved",
        }),
      },
      title: "A test incident title-updated",
    }),
  }),
})
p api_instance.update_incident(INCIDENT_DATA_ID, body)
