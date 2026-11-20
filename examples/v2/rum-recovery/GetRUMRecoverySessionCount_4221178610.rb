# Count recoverable sessions accepts exactly 180 days

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RUMRecoveryAPI.new

body = DatadogAPIClient::V2::RUMRecoveryCountRequest.new({
  data: DatadogAPIClient::V2::RUMRecoveryCountRequestData.new({
    type: "rum_recovery_count",
    attributes: DatadogAPIClient::V2::RUMRecoveryCountAttributes.new({
      query: "service:rum18600-fixture",
      from: 1621077071000,
      to: 1636629071000,
    }),
  }),
})
p api_instance.get_rum_recovery_session_count(body)
