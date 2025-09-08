# Update incident notification template returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_incident_notification_template".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

# there is a valid "notification_template" in the system
NOTIFICATION_TEMPLATE_DATA_ID = ENV["NOTIFICATION_TEMPLATE_DATA_ID"]

body = DatadogAPIClient::V2::PatchIncidentNotificationTemplateRequest.new({
  data: DatadogAPIClient::V2::IncidentNotificationTemplateUpdateData.new({
    attributes: DatadogAPIClient::V2::IncidentNotificationTemplateUpdateAttributes.new({
      category: "update",
      content: 'Incident Status Update:\n\nTitle: Sample Incident Title\nNew Status: resolved\nSeverity: SEV-2\nServices: web-service, database-service\nCommander: John Doe\n\nFor more details, visit the incident page.',
      name: "Example-Incident",
      subject: "Incident Update: Sample Incident Title - resolved",
    }),
    id: NOTIFICATION_TEMPLATE_DATA_ID,
    type: DatadogAPIClient::V2::IncidentNotificationTemplateType::NOTIFICATION_TEMPLATES,
  }),
})
p api_instance.update_incident_notification_template(NOTIFICATION_TEMPLATE_DATA_ID, body)
