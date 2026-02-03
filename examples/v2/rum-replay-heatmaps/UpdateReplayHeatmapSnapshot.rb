# Update replay heatmap snapshot returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RumReplayHeatmapsAPI.new

body = DatadogAPIClient::V2::SnapshotUpdateRequest.new({
  data: DatadogAPIClient::V2::SnapshotUpdateRequestData.new({
    attributes: DatadogAPIClient::V2::SnapshotUpdateRequestDataAttributes.new({
      event_id: "11111111-2222-3333-4444-555555555555",
      is_device_type_selected_by_user: false,
      start: 0,
    }),
    id: "00000000-0000-0000-0000-000000000001",
    type: DatadogAPIClient::V2::SnapshotUpdateRequestDataType::SNAPSHOTS,
  }),
})
p api_instance.update_replay_heatmap_snapshot("00000000-0000-0000-0000-000000000001", body)
