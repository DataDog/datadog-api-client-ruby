# Get a Mobile test returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new

# there is a valid "synthetics_mobile_test" in the system
SYNTHETICS_MOBILE_TEST_PUBLIC_ID = ENV["SYNTHETICS_MOBILE_TEST_PUBLIC_ID"]
p api_instance.get_mobile_test(SYNTHETICS_MOBILE_TEST_PUBLIC_ID)
