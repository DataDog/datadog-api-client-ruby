# Update an incident type returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_incident_type".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

# there is a valid "incident_type" in the system
INCIDENT_TYPE_DATA_ATTRIBUTES_NAME = ENV["INCIDENT_TYPE_DATA_ATTRIBUTES_NAME"]
INCIDENT_TYPE_DATA_ID = ENV["INCIDENT_TYPE_DATA_ID"]

body = DatadogAPIClient::V2::IncidentTypePatchRequest.new({
  data: DatadogAPIClient::V2::IncidentTypePatchData.new({
    id: INCIDENT_TYPE_DATA_ID,
    attributes: DatadogAPIClient::V2::IncidentTypeUpdateAttributes.new({
      name: "Security Incident-updated",
    }),
    type: DatadogAPIClient::V2::IncidentTypeType::INCIDENT_TYPES,
  }),
})
p api_instance.update_incident_type(INCIDENT_TYPE_DATA_ID, body)
