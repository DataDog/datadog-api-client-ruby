# Delete a failure event returns "Accepted" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::DORAMetricsAPI.new
p api_instance.delete_dora_failure("NO_VALUE")
