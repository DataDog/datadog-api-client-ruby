# Get a failure event returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::DORAMetricsAPI.new
p api_instance.get_dora_failure("failure_id")
