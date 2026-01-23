# Delete global incident handle returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_global_incident_handle".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new
api_instance.delete_global_incident_handle()
