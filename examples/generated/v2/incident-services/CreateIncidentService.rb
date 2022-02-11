require "datadog_api_client"

DatadogAPIClient::V2.configure do |config|
  config.unstable_operations[:create_incident_service] = true
end

api_instance = DatadogAPIClient::V2::IncidentServicesAPI.new
body = DatadogAPIClient::V2::IncidentServiceCreateRequest.new({ data: DatadogAPIClient::V2::IncidentServiceCreateData.new({ type: DatadogAPIClient::V2::IncidentServiceType::SERVICES }) }) # IncidentServiceCreateRequest | Incident Service Payload.

begin
  # Create a new incident service
  result = api_instance.create_incident_service(body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling IncidentServicesAPI->create_incident_service: #{e}"
end
