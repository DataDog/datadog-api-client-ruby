# Update a Twilio integration account returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_twilio_integration_account".to_sym] = true
end
api_instance = DatadogAPIClient::V2::TwilioIntegrationAccountsAPI.new

body = DatadogAPIClient::V2::TwilioIntegrationAccountUpdateRequest.new({
  data: DatadogAPIClient::V2::TwilioIntegrationAccountUpdateData.new({
    attributes: DatadogAPIClient::V2::TwilioIntegrationAccountUpdateAttributes.new({
      interface: DatadogAPIClient::V2::TwilioInterfaceUpdate.new({
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
        settings: DatadogAPIClient::V2::TwilioSettingsUpdate.new({
          account_sid: "ACxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
          censor_logs: true,
        }),
        type: DatadogAPIClient::V2::TwilioInterfaceType::TWILIO,
      }),
      name: "twilio-prod",
    }),
    type: DatadogAPIClient::V2::IntegrationAccountType::INTEGRATION_ACCOUNT,
  }),
})
p api_instance.update_twilio_integration_account(TwilioInterfaceType::TWILIO, "account_id", body)
