# Update incident notification rule returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_incident_notification_rule".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

# there is a valid "notification_rule" in the system
NOTIFICATION_RULE_DATA_ID = ENV["NOTIFICATION_RULE_DATA_ID"]

# there is a valid "incident_type" in the system
INCIDENT_TYPE_DATA_ID = ENV["INCIDENT_TYPE_DATA_ID"]

body = DatadogAPIClient::V2::PutIncidentNotificationRuleRequest.new({
  data: DatadogAPIClient::V2::IncidentNotificationRuleUpdateData.new({
    attributes: DatadogAPIClient::V2::IncidentNotificationRuleCreateAttributes.new({
      enabled: false,
      conditions: [
        DatadogAPIClient::V2::IncidentNotificationRuleConditionsItems.new({
          field: "severity",
          values: [
            "SEV-1",
          ],
        }),
      ],
      handles: [
        "@updated-team-email@company.com",
      ],
      visibility: DatadogAPIClient::V2::IncidentNotificationRuleCreateAttributesVisibility::PRIVATE,
      trigger: "incident_modified_trigger",
    }),
    relationships: DatadogAPIClient::V2::IncidentNotificationRuleCreateDataRelationships.new({
      incident_type: DatadogAPIClient::V2::RelationshipToIncidentType.new({
        data: DatadogAPIClient::V2::RelationshipToIncidentTypeData.new({
          id: INCIDENT_TYPE_DATA_ID,
          type: DatadogAPIClient::V2::IncidentTypeType::INCIDENT_TYPES,
        }),
      }),
    }),
    id: NOTIFICATION_RULE_DATA_ID,
    type: DatadogAPIClient::V2::IncidentNotificationRuleType::INCIDENT_NOTIFICATION_RULES,
  }),
})
p api_instance.update_incident_notification_rule(NOTIFICATION_RULE_DATA_ID, body)
