# Create replay heatmap snapshot returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RumReplayHeatmapsAPI.new

body = DatadogAPIClient::V2::SnapshotCreateRequest.new({
  data: DatadogAPIClient::V2::SnapshotCreateRequestData.new({
    attributes: DatadogAPIClient::V2::SnapshotCreateRequestDataAttributes.new({
      application_id: "aaaaaaaa-1111-2222-3333-bbbbbbbbbbbb",
      device_type: "desktop",
      event_id: "11111111-2222-3333-4444-555555555555",
      is_device_type_selected_by_user: false,
      snapshot_name: "My Snapshot",
      start: 0,
      view_name: "/home",
    }),
    type: DatadogAPIClient::V2::SnapshotUpdateRequestDataType::SNAPSHOTS,
  }),
})
p api_instance.create_replay_heatmap_snapshot(body)
