# Get incident timeline entry thread returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_incident_timeline_entry_thread".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new
p api_instance.get_incident_timeline_entry_thread("incident_id", "9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d")
