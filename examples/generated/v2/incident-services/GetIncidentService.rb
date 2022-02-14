require "datadog_api_client"

DatadogAPIClient::V2.configure do |config|
  config.unstable_operations[:get_incident_service] = true
end

api_instance = DatadogAPIClient::V2::IncidentServicesAPI.new
service_id = "service_id_example" # String | The ID of the incident service.
opts = {
  include: DatadogAPIClient::V2::IncidentRelatedObject::USERS, # IncidentRelatedObject | Specifies which types of related objects should be included in the response.
}

begin
  # Get details of an incident service
  result = api_instance.get_incident_service(service_id, opts)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling IncidentServicesAPI->get_incident_service: #{e}"
end
