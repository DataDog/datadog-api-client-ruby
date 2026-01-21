# Delete incident attachment returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_incident_attachment".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

# there is a valid "incident" in the system
INCIDENT_DATA_ID = ENV["INCIDENT_DATA_ID"]

# there is a valid "incident_attachment" in the system
INCIDENT_ATTACHMENT_DATA_ID = ENV["INCIDENT_ATTACHMENT_DATA_ID"]
api_instance.delete_incident_attachment(INCIDENT_DATA_ID, INCIDENT_ATTACHMENT_DATA_ID)
