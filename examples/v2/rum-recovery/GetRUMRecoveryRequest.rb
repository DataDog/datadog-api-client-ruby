# Get recovery request progress returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RUMRecoveryAPI.new
p api_instance.get_rum_recovery_request("11111111-1111-4111-8111-111111111111")
