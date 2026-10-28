# Delete an incident responder returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.delete_incident_responder".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new
api_instance.delete_incident_responder("incident_id", "9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d")
