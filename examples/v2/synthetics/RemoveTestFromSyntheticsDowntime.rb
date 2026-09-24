# Remove a test from a Synthetics downtime returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::SyntheticsAPI.new
p api_instance.remove_test_from_synthetics_downtime("00000000-0000-0000-0000-000000000001", "abc-def-123")
