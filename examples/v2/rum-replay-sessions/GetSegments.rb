# Get segments returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::RumReplaySessionsAPI.new
p api_instance.get_segments("00000000-0000-0000-0000-000000000002", "00000000-0000-0000-0000-000000000001")
