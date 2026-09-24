# Search logs (GET) returns "OK" response with pagination

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::LogsAPI.new
api_instance.list_logs_get_with_pagination() { |item| puts item }
