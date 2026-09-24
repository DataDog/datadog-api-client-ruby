# Get active downtimes for a monitor returns "OK" response with pagination

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::DowntimesAPI.new
api_instance.list_monitor_downtimes_with_pagination(9223372036854775807) { |item| puts item }
