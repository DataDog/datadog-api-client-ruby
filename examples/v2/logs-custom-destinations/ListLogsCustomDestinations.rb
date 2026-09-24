# Get all custom destinations returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::LogsCustomDestinationsAPI.new
p api_instance.list_logs_custom_destinations()
