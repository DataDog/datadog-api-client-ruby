require "datadog_api_client"

DatadogAPIClient::V2.configure do |config|
  config.unstable_operations[:get_incident] = true
end

api_instance = DatadogAPIClient::V2::IncidentsAPI.new
incident_id = "incident_id_example" # String | The UUID of the incident.
opts = {
  include: [DatadogAPIClient::V2::IncidentRelatedObject::USERS], # Array<IncidentRelatedObject> | Specifies which types of related objects should be included in the response.
}

begin
  # Get the details of an incident
  result = api_instance.get_incident(incident_id, opts)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling IncidentsAPI->get_incident: #{e}"
end
