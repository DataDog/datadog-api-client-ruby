# Get a list of logs returns "OK" response with pagination

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::LogsAPI.new
opts = {
  page_limit: 2,
}
api_instance.list_logs_get_with_pagination(opts) { |item| puts item }
