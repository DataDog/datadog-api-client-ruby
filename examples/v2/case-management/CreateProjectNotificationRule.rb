# Create a notification rule returns "CREATED" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new

body = DatadogAPIClient::V2::CaseNotificationRuleCreateRequest.new({
  data: DatadogAPIClient::V2::CaseNotificationRuleCreate.new({
    attributes: DatadogAPIClient::V2::CaseNotificationRuleCreateAttributes.new({
      is_enabled: true,
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
p api_instance.create_project_notification_rule("project_id", body)
