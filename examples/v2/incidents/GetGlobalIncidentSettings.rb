# Get global incident settings returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_global_incident_settings".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new
p api_instance.get_global_incident_settings()
