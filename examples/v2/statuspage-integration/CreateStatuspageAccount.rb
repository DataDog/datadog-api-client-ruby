# Create the Statuspage account returns "CREATED" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::StatuspageIntegrationAPI.new

body = DatadogAPIClient::V2::StatuspageAccountCreateRequest.new({
  data: DatadogAPIClient::V2::StatuspageAccountCreateData.new({
    attributes: DatadogAPIClient::V2::StatuspageAccountCreateAttributes.new({
      api_key: "00000000-0000-0000-0000-000000000000",
    }),
    type: DatadogAPIClient::V2::StatuspageAccountType::STATUSPAGE_ACCOUNT,
  }),
})
p api_instance.create_statuspage_account(body)
