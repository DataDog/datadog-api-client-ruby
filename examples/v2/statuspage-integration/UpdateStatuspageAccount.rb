# Update the Statuspage account returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::StatuspageIntegrationAPI.new

body = DatadogAPIClient::V2::StatuspageAccountUpdateRequest.new({
  data: DatadogAPIClient::V2::StatuspageAccountUpdateData.new({
    attributes: DatadogAPIClient::V2::StatuspageAccountUpdateAttributes.new({
      api_key: "00000000-0000-0000-0000-000000000000",
    }),
    type: DatadogAPIClient::V2::StatuspageAccountType::STATUSPAGE_ACCOUNT,
  }),
})
p api_instance.update_statuspage_account(body)
