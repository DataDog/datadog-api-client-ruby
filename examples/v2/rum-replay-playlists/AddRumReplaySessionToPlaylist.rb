# Add rum replay session to playlist returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RumReplayPlaylistsAPI.new
p api_instance.add_rum_replay_session_to_playlist(1704067200000, 1234567, "00000000-0000-0000-0000-000000000001")
