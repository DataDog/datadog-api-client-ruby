# Get rum replay playlist returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RumReplayPlaylistsAPI.new
p api_instance.get_rum_replay_playlist(1234567)
