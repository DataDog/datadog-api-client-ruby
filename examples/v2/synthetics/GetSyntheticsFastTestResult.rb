# Get a fast test result returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::SyntheticsAPI.new
p api_instance.get_synthetics_fast_test_result("abc12345-1234-1234-1234-abc123456789")
