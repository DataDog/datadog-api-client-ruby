# Update an existing incident service returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_incident_service".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentServicesAPI.new

# there is a valid "service" in the system
SERVICE_DATA_ATTRIBUTES_NAME = ENV["SERVICE_DATA_ATTRIBUTES_NAME"]
SERVICE_DATA_ID = ENV["SERVICE_DATA_ID"]

body = DatadogAPIClient::V2::IncidentServiceUpdateRequest.new({
  data: DatadogAPIClient::V2::IncidentServiceUpdateData.new({
    type: DatadogAPIClient::V2::IncidentServiceType::SERVICES,
    attributes: DatadogAPIClient::V2::IncidentServiceUpdateAttributes.new({
      name: "service name-updated",
    }),
  }),
})
p api_instance.update_incident_service(SERVICE_DATA_ID, body)
