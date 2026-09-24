# Get the list of all Synthetic tests returns "OK - Returns the list of all Synthetic tests." response with pagination

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
opts = {
  page_size: 2,
}
api_instance.list_tests_with_pagination(opts) { |item| puts item }
