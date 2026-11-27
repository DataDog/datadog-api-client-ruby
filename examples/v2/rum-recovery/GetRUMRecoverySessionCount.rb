# Estimate recoverable sessions returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RUMRecoveryAPI.new

body = DatadogAPIClient::V2::RUMRecoveryCountRequest.new({
  data: DatadogAPIClient::V2::RUMRecoveryCountRequestData.new({
    attributes: DatadogAPIClient::V2::RUMRecoveryCountAttributes.new({
      from: 1789905600000,
      query: "service:web",
      to: 1789992000000,
    }),
    id: "11111111-1111-4111-8111-111111111111",
    type: "rum_recovery_count",
  }),
})
p api_instance.get_rum_recovery_session_count(body)
