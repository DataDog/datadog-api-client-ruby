# Get incident attachments returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_incident_attachments".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

# there is a valid "incident" in the system
INCIDENT_DATA_ID = ENV["INCIDENT_DATA_ID"]
p api_instance.list_incident_attachments(INCIDENT_DATA_ID)
