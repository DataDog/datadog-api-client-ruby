# Delete an existing incident returns "OK" response

require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

# there is a valid "incident" in the system
INCIDENT_DATA_ID = ENV["INCIDENT_DATA_ID"]
api_instance.delete_incident(INCIDENT_DATA_ID)
