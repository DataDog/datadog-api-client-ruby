# Delete an incident type returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_incident_type".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

# there is a valid "incident_type" in the system
INCIDENT_TYPE_DATA_ID = ENV["INCIDENT_TYPE_DATA_ID"]
api_instance.delete_incident_type(INCIDENT_TYPE_DATA_ID)
