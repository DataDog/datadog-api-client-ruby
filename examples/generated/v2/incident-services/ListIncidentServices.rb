require 'datadog_api_client'

DatadogAPIClient::V2.configure do |config|
  config.unstable_operations[:list_incident_services] = true
end

api_instance = DatadogAPIClient::V2::IncidentServicesAPI.new
opts = {
  include: DatadogAPIClient::V2::IncidentRelatedObject::USERS, # IncidentRelatedObject | Specifies which types of related objects should be included in the response.
  page_size: 10, # Integer | Size for a given page.
  page_offset: 0, # Integer | Specific offset to use as the beginning of the returned page.
  filter: 'ExampleServiceName' # String | A search query that filters services by name.
}

begin
  # Get a list of all incident services
  result = api_instance.list_incident_services(opts)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling IncidentServicesAPI->list_incident_services: #{e}"
end
