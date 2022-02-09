require "datadog_api_client"

DatadogAPIClient::V2.configure do |config|
  config.unstable_operations[:update_incident] = true
end

api_instance = DatadogAPIClient::V2::IncidentsAPI.new
incident_id = "incident_id_example" # String | The UUID of the incident.
body = DatadogAPIClient::V2::IncidentUpdateRequest.new({ data: DatadogAPIClient::V2::IncidentUpdateData.new({ id: "00000000-0000-0000-0000-000000000000", type: DatadogAPIClient::V2::IncidentType::INCIDENTS }) }) # IncidentUpdateRequest | Incident Payload.

begin
  # Update an existing incident
  result = api_instance.update_incident(incident_id, body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling IncidentsAPI->update_incident: #{e}"
end
