require 'datadog_api_client'

DatadogAPIClient::V2.configure do |config|
  config.unstable_operations[:list_incidents] = true
end

api_instance = DatadogAPIClient::V2::IncidentsAPI.new
opts = {
  include: [DatadogAPIClient::V2::IncidentRelatedObject::USERS], # Array<IncidentRelatedObject> | Specifies which types of related objects should be included in the response.
  page_size: 10, # Integer | Size for a given page.
  page_offset: 0 # Integer | Specific offset to use as the beginning of the returned page.
}

begin
  # Get a list of incidents
  result = api_instance.list_incidents(opts)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling IncidentsAPI->list_incidents: #{e}"
end
