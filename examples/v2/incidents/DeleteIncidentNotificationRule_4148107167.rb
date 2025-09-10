# Delete incident notification rule returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_incident_notification_rule".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

# there is a valid "notification_rule" in the system
NOTIFICATION_RULE_DATA_ID = ENV["NOTIFICATION_RULE_DATA_ID"]
api_instance.delete_incident_notification_rule(NOTIFICATION_RULE_DATA_ID)
