# List batch history filters request creation time independently of session time

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RUMRecoveryAPI.new
opts = {
  from: 1,
  to: 2,
  query: "service:rum18600-fixture AND @usr.id:(123 OR 456)",
}
p api_instance.list_rum_recovery_batch_requests(RumRecoveryBatchRequestType::BATCH, opts)
