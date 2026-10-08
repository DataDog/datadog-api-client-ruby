# List Bits AI investigations returns "OK" response with pagination

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::BitsAIAPI.new
api_instance.list_investigations_with_pagination() { |item| puts item }
