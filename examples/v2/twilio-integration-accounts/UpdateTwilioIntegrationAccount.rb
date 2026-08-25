# Update a Twilio integration account returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_twilio_integration_account".to_sym] = true
end
api_instance = DatadogAPIClient::V2::TwilioIntegrationAccountsAPI.new

body = DatadogAPIClient::V2::TwilioIntegrationAccountUpdateRequest.new({
  data: DatadogAPIClient::V2::TwilioIntegrationAccountUpdateData.new({
    attributes: DatadogAPIClient::V2::TwilioIntegrationAccountUpdateAttributes.new({
      authentication: DatadogAPIClient::V2::IntegrationAccountBasicAuthUpdate.new({
        auth_type: DatadogAPIClient::V2::IntegrationAccountBasicAuthType::BASIC,
        password: "your-password",
        username: "datadog",
      }),
      dataflows: DatadogAPIClient::V2::TwilioIntegrationDataflowsRequest.new({
        twilio_alerts_logs: DatadogAPIClient::V2::TwilioAlertsLogsIntegrationDataflowRequest.new({
          enabled: true,
        }),
        twilio_call_summaries_logs: DatadogAPIClient::V2::TwilioCallSummariesLogsIntegrationDataflowRequest.new({
          enabled: true,
        }),
        twilio_cloud_cost_metrics: DatadogAPIClient::V2::TwilioCloudCostMetricsIntegrationDataflowRequest.new({
          enabled: true,
        }),
        twilio_events_logs: DatadogAPIClient::V2::TwilioEventsLogsIntegrationDataflowRequest.new({
          enabled: true,
        }),
        twilio_messages_logs: DatadogAPIClient::V2::TwilioMessagesLogsIntegrationDataflowRequest.new({
          enabled: true,
        }),
      }),
      name: "twilio-prod",
      settings: DatadogAPIClient::V2::TwilioIntegrationAccountSettingsUpdate.new({
        account_sid: "ACxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
        censor_logs: true,
      }),
    }),
    id: "953a0060-81ec-4221-aed4-d4733b59cd96",
    type: DatadogAPIClient::V2::IntegrationAccountType::INTEGRATION_ACCOUNT,
  }),
})
p api_instance.update_twilio_integration_account("account_id", body)
