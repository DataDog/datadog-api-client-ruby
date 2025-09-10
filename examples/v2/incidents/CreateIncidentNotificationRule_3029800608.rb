# Create incident notification rule returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_incident_notification_rule".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

# there is a valid "incident_type" in the system
INCIDENT_TYPE_DATA_ID = ENV["INCIDENT_TYPE_DATA_ID"]

body = DatadogAPIClient::V2::CreateIncidentNotificationRuleRequest.new({
  data: DatadogAPIClient::V2::IncidentNotificationRuleCreateData.new({
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
      handles: [
        "@test-email@company.com",
      ],
      visibility: DatadogAPIClient::V2::IncidentNotificationRuleCreateAttributesVisibility::ORGANIZATION,
      trigger: "incident_created_trigger",
      enabled: true,
    }),
    relationships: DatadogAPIClient::V2::IncidentNotificationRuleCreateDataRelationships.new({
      incident_type: DatadogAPIClient::V2::RelationshipToIncidentType.new({
        data: DatadogAPIClient::V2::RelationshipToIncidentTypeData.new({
          id: INCIDENT_TYPE_DATA_ID,
          type: DatadogAPIClient::V2::IncidentTypeType::INCIDENT_TYPES,
        }),
      }),
    }),
    type: DatadogAPIClient::V2::IncidentNotificationRuleType::INCIDENT_NOTIFICATION_RULES,
  }),
})
p api_instance.create_incident_notification_rule(body)
