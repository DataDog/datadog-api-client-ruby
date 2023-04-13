# Delete an incident todo returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_incident_todo".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

# there is a valid "incident" in the system
INCIDENT_DATA_ID = ENV["INCIDENT_DATA_ID"]

# the "incident" has an "incident_todo"
INCIDENT_TODO_DATA_ID = ENV["INCIDENT_TODO_DATA_ID"]
api_instance.delete_incident_todo(INCIDENT_DATA_ID, INCIDENT_TODO_DATA_ID)
