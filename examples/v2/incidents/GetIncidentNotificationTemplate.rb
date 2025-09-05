# Get incident notification template returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_incident_notification_template".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

# there is a valid "notification_template" in the system
NOTIFICATION_TEMPLATE_DATA_ID = ENV["NOTIFICATION_TEMPLATE_DATA_ID"]
p api_instance.get_incident_notification_template(NOTIFICATION_TEMPLATE_DATA_ID)
