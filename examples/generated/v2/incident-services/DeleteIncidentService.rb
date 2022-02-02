require 'datadog_api_client'

DatadogAPIClient::V2.configure do |config|
  config.unstable_operations[:delete_incident_service] = true
end

api_instance = DatadogAPIClient::V2::IncidentServicesAPI.new
service_id = 'service_id_example' # String | The ID of the incident service.

begin
  # Delete an existing incident service
  api_instance.delete_incident_service(service_id)
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling IncidentServicesAPI->delete_incident_service: #{e}"
end
