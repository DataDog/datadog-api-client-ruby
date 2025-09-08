# Create incident notification template returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_incident_notification_template".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

# there is a valid "incident_type" in the system
INCIDENT_TYPE_DATA_ID = ENV["INCIDENT_TYPE_DATA_ID"]

body = DatadogAPIClient::V2::CreateIncidentNotificationTemplateRequest.new({
  data: DatadogAPIClient::V2::IncidentNotificationTemplateCreateData.new({
    attributes: DatadogAPIClient::V2::IncidentNotificationTemplateCreateAttributes.new({
      category: "alert",
      content: 'An incident has been declared.\n\nTitle: Sample Incident Title\nSeverity: SEV-2\nAffected Services: web-service, database-service\nStatus: active\n\nPlease join the incident channel for updates.',
      name: "Example-Incident",
      subject: "SEV-2 Incident: Sample Incident Title",
    }),
    relationships: DatadogAPIClient::V2::IncidentNotificationTemplateCreateDataRelationships.new({
      incident_type: DatadogAPIClient::V2::RelationshipToIncidentType.new({
        data: DatadogAPIClient::V2::RelationshipToIncidentTypeData.new({
          id: INCIDENT_TYPE_DATA_ID,
          type: DatadogAPIClient::V2::IncidentTypeType::INCIDENT_TYPES,
        }),
      }),
    }),
    type: DatadogAPIClient::V2::IncidentNotificationTemplateType::NOTIFICATION_TEMPLATES,
  }),
})
p api_instance.create_incident_notification_template(body)
