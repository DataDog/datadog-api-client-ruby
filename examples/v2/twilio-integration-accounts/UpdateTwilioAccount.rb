# Update a Twilio integration account returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_twilio_account".to_sym] = true
end
api_instance = DatadogAPIClient::V2::TwilioIntegrationAccountsAPI.new

body = DatadogAPIClient::V2::TwilioAccountUpdateRequest.new({
  data: DatadogAPIClient::V2::TwilioAccountUpdateData.new({
    attributes: DatadogAPIClient::V2::TwilioAccountUpdateAttributes.new({
      authentication: DatadogAPIClient::V2::TwilioBasicAuth.new({
        api_key: "SKxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
        api_key_token: "your-api-key-secret",
        type: DatadogAPIClient::V2::TwilioBasicAuthType::BASIC,
      }),
      dataflows: [
        DatadogAPIClient::V2::TwilioDataflow.new({
          enabled: true,
          id: DatadogAPIClient::V2::TwilioDataflowId::MESSAGES_LOGS,
        }),
      ],
      name: "twilio-prod",
      settings: DatadogAPIClient::V2::TwilioSettingsUpdate.new({
        account_sid: "ACxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
        censor_logs: true,
      }),
    }),
    type: DatadogAPIClient::V2::IntegrationAccountType::INTEGRATION_ACCOUNT,
  }),
})
p api_instance.update_twilio_account("account_id", body)
