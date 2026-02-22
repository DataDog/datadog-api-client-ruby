# List timestamp overrides for an incident returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_incident_timestamp_overrides".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new
p api_instance.list_incident_timestamp_overrides("9cecfde8-e35d-4387-8985-9b30dcb9cb1c")
