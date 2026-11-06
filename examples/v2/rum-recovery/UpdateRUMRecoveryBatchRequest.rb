# Cancel a batch recovery request returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RUMRecoveryAPI.new

body = DatadogAPIClient::V2::RumRecoveryCancelRequest.new({
  data: DatadogAPIClient::V2::RumRecoveryCancelData.new({
    attributes: DatadogAPIClient::V2::RumRecoveryCancelAttributes.new({
      status: DatadogAPIClient::V2::RumRecoveryCancelStatus::CANCELLED,
    }),
    id: "11111111-1111-4111-8111-111111111111",
    type: "rum_recovery_request",
  }),
})
p api_instance.update_rum_recovery_batch_request("11111111-1111-4111-8111-111111111111", body)
