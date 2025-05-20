# List resource filters returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new
opts = {
  cloud_provider: "aws",
  account_id: "123456789",
}
p api_instance.get_resource_evaluation_filters(opts)
