# Delete an existing incident service returns "OK" response

require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::IncidentServicesAPI.new

# there is a valid "service" in the system
SERVICE_DATA_ID = ENV["SERVICE_DATA_ID"]
api_instance.delete_incident_service(SERVICE_DATA_ID)
