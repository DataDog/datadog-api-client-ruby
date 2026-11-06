# List batch recovery requests returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RUMRecoveryAPI.new
p api_instance.list_rum_recovery_batch_requests(RumRecoveryBatchRequestType::BATCH)
