# Get an incident role assignment returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_incident_role_assignment".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new
p api_instance.get_incident_role_assignment("9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d")
