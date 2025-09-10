# Update an incident notification rule returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_incident_notification_rule".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

body = DatadogAPIClient::V2::PutIncidentNotificationRuleRequest.new({
  data: DatadogAPIClient::V2::IncidentNotificationRuleUpdateData.new({
    attributes: DatadogAPIClient::V2::IncidentNotificationRuleCreateAttributes.new({
      conditions: [
        DatadogAPIClient::V2::IncidentNotificationRuleConditionsItems.new({
          field: "severity",
          values: [
            "SEV-1",
            "SEV-2",
          ],
        }),
      ],
      enabled: true,
      handles: [
        "@team-email@company.com",
        "@slack-channel",
      ],
      renotify_on: [
        "status",
        "severity",
      ],
      trigger: "incident_created_trigger",
      visibility: DatadogAPIClient::V2::IncidentNotificationRuleCreateAttributesVisibility::ORGANIZATION,
    }),
    id: "00000000-0000-0000-0000-000000000001",
    relationships: DatadogAPIClient::V2::IncidentNotificationRuleCreateDataRelationships.new({
      incident_type: DatadogAPIClient::V2::RelationshipToIncidentType.new({
        data: DatadogAPIClient::V2::RelationshipToIncidentTypeData.new({
          id: "00000000-0000-0000-0000-000000000000",
          type: DatadogAPIClient::V2::IncidentTypeType::INCIDENT_TYPES,
        }),
      }),
      notification_template: DatadogAPIClient::V2::RelationshipToIncidentNotificationTemplate.new({
        data: DatadogAPIClient::V2::RelationshipToIncidentNotificationTemplateData.new({
          id: "00000000-0000-0000-0000-000000000001",
          type: DatadogAPIClient::V2::IncidentNotificationTemplateType::NOTIFICATION_TEMPLATES,
        }),
      }),
    }),
    type: DatadogAPIClient::V2::IncidentNotificationRuleType::INCIDENT_NOTIFICATION_RULES,
  }),
})
p api_instance.update_incident_notification_rule("00000000-0000-0000-0000-000000000001", body)
