# Delete rum replay playlist returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RumReplayPlaylistsAPI.new
api_instance.delete_rum_replay_playlist(1234567)
