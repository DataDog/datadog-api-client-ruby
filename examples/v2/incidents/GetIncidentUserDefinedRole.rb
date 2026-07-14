# Get an incident user-defined role returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_incident_user_defined_role".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new
p api_instance.get_incident_user_defined_role("00000000-0000-0000-0000-000000000002")
