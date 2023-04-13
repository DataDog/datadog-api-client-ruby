# Delete an existing incident service returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_incident_service".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentServicesAPI.new

# there is a valid "service" in the system
SERVICE_DATA_ID = ENV["SERVICE_DATA_ID"]
api_instance.delete_incident_service(SERVICE_DATA_ID)
