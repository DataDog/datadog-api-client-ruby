# Get RUM replay playlist returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::RumReplayPlaylistsAPI.new
p api_instance.get_rum_replay_playlist(1234567)
