# Get a browser test's latest results returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::SyntheticsAPI.new
p api_instance.list_synthetics_browser_test_latest_results("public_id")
