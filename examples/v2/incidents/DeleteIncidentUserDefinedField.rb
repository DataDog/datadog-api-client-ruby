# Delete an incident user-defined field returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_incident_user_defined_field".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new
api_instance.delete_incident_user_defined_field("00000000-0000-0000-0000-000000000000")
