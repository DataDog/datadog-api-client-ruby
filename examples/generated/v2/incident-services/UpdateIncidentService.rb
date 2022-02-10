require 'datadog_api_client'

DatadogAPIClient::V2.configure do |config|
  config.unstable_operations[:update_incident_service] = true
end

api_instance = DatadogAPIClient::V2::IncidentServicesAPI.new
service_id = 'service_id_example' # String | The ID of the incident service.
body = DatadogAPIClient::V2::IncidentServiceUpdateRequest.new({data: DatadogAPIClient::V2::IncidentServiceUpdateData.new({type: DatadogAPIClient::V2::IncidentServiceType::SERVICES})}) # IncidentServiceUpdateRequest | Incident Service Payload.

begin
  # Update an existing incident service
  result = api_instance.update_incident_service(service_id, body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling IncidentServicesAPI->update_incident_service: #{e}"
end
