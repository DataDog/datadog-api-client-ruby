# Delete incident rule returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_incident_config_rule".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new
api_instance.delete_incident_config_rule("612e0c88-9137-4bd2-8de4-9356867d4c6a")
