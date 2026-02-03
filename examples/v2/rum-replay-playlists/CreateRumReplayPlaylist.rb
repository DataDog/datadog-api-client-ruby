# Create rum replay playlist returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RumReplayPlaylistsAPI.new

body = DatadogAPIClient::V2::Playlist.new({
  data: DatadogAPIClient::V2::PlaylistData.new({
    attributes: DatadogAPIClient::V2::PlaylistDataAttributes.new({
      created_by: DatadogAPIClient::V2::PlaylistDataAttributesCreatedBy.new({
        handle: "john.doe@example.com",
        id: "00000000-0000-0000-0000-000000000001",
        uuid: "00000000-0000-0000-0000-000000000001",
      }),
      name: "My Playlist",
    }),
    type: DatadogAPIClient::V2::PlaylistDataType::RUM_REPLAY_PLAYLIST,
  }),
})
p api_instance.create_rum_replay_playlist(body)
