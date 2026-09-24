# Get an incident event returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::DORAMetricsAPI.new
p api_instance.get_dora_failure("failure_id")
