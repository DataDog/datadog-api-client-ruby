# Create an incident type returns "CREATED" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_incident_type".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

body = DatadogAPIClient::V2::IncidentTypeCreateRequest.new({
  data: DatadogAPIClient::V2::IncidentTypeCreateData.new({
    attributes: DatadogAPIClient::V2::IncidentTypeAttributes.new({
      description: "Any incidents that harm (or have the potential to) the confidentiality, integrity, or availability of our data.",
      is_default: false,
      name: "Security Incident",
    }),
    type: DatadogAPIClient::V2::IncidentTypeType::INCIDENT_TYPES,
  }),
})
p api_instance.create_incident_type(body)
