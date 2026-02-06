# Delete a timestamp override for an incident returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_incident_timestamp_override".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new
api_instance.delete_incident_timestamp_override("9cecfde8-e35d-4387-8985-9b30dcb9cb1c", "6f48a86f-9a39-4bcf-a76b-9a1b20188995")
