# List Bits AI investigations returns "OK" response with pagination

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_investigations".to_sym] = true
end
api_instance = DatadogAPIClient::V2::BitsAIAPI.new
api_instance.list_investigations_with_pagination() { |item| puts item }
