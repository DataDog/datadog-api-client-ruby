# Create a new incident service returns "CREATED" response

require "datadog_api_client"
DatadogAPIClient::V2.configure do |config|
  config.unstable_operations[:create_incident_service] = true
end
api_instance = DatadogAPIClient::V2::IncidentServicesAPI.new

body = DatadogAPIClient::V2::IncidentServiceCreateRequest.new({
  data: DatadogAPIClient::V2::IncidentServiceCreateData.new({
    type: DatadogAPIClient::V2::IncidentServiceType::SERVICES,
    attributes: DatadogAPIClient::V2::IncidentServiceCreateAttributes.new({
      name: "Example-Create_a_new_incident_service_returns_CREATED_response",
    }),
  }),
})
p api_instance.create_incident_service(body)
