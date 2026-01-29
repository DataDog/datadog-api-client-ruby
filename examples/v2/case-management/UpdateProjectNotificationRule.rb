# Update a notification rule returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new

body = DatadogAPIClient::V2::CaseNotificationRuleUpdateRequest.new({
  data: DatadogAPIClient::V2::CaseNotificationRuleUpdate.new({
    attributes: DatadogAPIClient::V2::CaseNotificationRuleAttributes.new({
      recipients: [
        DatadogAPIClient::V2::CaseNotificationRuleRecipient.new({
          data: DatadogAPIClient::V2::CaseNotificationRuleRecipientData.new({}),
          type: "EMAIL",
        }),
      ],
      triggers: [
        DatadogAPIClient::V2::CaseNotificationRuleTrigger.new({
          data: DatadogAPIClient::V2::CaseNotificationRuleTriggerData.new({}),
          type: "CASE_CREATED",
        }),
      ],
    }),
    type: DatadogAPIClient::V2::CaseNotificationRuleResourceType::NOTIFICATION_RULE,
  }),
})
api_instance.update_project_notification_rule("project_id", "notification_rule_id", body)
