# Get a list of all incident services returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_incident_services".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentServicesAPI.new

# there is a valid "service" in the system
SERVICE_DATA_ATTRIBUTES_NAME = ENV["SERVICE_DATA_ATTRIBUTES_NAME"]
opts = {
  filter: SERVICE_DATA_ATTRIBUTES_NAME,
}
p api_instance.list_incident_services(opts)
