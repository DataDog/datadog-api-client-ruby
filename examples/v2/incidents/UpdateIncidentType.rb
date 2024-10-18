# Update an incident type returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_incident_type".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

body = DatadogAPIClient::V2::IncidentTypePatchRequest.new({
  data: DatadogAPIClient::V2::IncidentTypePatchData.new({
    attributes: DatadogAPIClient::V2::IncidentTypeUpdateAttributes.new({
      description: "Any incidents that harm (or have the potential to) the confidentiality, integrity, or availability of our data. Note: This will notify the security team.",
      is_default: true,
      name: "Security Incident",
    }),
    type: DatadogAPIClient::V2::IncidentTypeType::INCIDENT_TYPES,
  }),
})
p api_instance.update_incident_type("incident_type_id", body)
