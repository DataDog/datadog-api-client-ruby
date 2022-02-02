require 'datadog_api_client'

DatadogAPIClient::V2.configure do |config|
  config.unstable_operations[:delete_incident] = true
end

api_instance = DatadogAPIClient::V2::IncidentsAPI.new
incident_id = 'incident_id_example' # String | The UUID of the incident.

begin
  # Delete an existing incident
  api_instance.delete_incident(incident_id)
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling IncidentsAPI->delete_incident: #{e}"
end
