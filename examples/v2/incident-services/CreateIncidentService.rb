# Create a new incident service returns "CREATED" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_incident_service".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentServicesAPI.new

body = DatadogAPIClient::V2::IncidentServiceCreateRequest.new({
  data: DatadogAPIClient::V2::IncidentServiceCreateData.new({
    type: DatadogAPIClient::V2::IncidentServiceType::SERVICES,
    attributes: DatadogAPIClient::V2::IncidentServiceCreateAttributes.new({
      name: "Example-Incident-Service",
    }),
  }),
})
p api_instance.create_incident_service(body)
