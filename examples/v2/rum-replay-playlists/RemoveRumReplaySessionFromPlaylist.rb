# Remove rum replay session from playlist returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RumReplayPlaylistsAPI.new
api_instance.remove_rum_replay_session_from_playlist(1234567, "00000000-0000-0000-0000-000000000001")
