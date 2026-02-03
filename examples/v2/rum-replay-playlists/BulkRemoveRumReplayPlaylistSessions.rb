# Bulk remove rum replay playlist sessions returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RumReplayPlaylistsAPI.new

body = DatadogAPIClient::V2::SessionIdArray.new({
  data: [
    DatadogAPIClient::V2::SessionIdData.new({
      id: "00000000-0000-0000-0000-000000000001",
      type: DatadogAPIClient::V2::ViewershipHistorySessionDataType::RUM_REPLAY_SESSION,
    }),
  ],
})
api_instance.bulk_remove_rum_replay_playlist_sessions(1234567, body)
