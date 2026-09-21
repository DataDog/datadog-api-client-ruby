# Get a Network Path test returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::SyntheticsAPI.new
p api_instance.get_synthetics_network_test("c7a-uwa-wn2")
