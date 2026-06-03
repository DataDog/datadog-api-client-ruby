# List rum replay playlist sessions returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RumReplayPlaylistsAPI.new
p api_instance.list_rum_replay_playlist_sessions(1234567)
