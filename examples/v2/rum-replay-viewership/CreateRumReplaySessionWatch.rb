# Create rum replay session watch returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RumReplayViewershipAPI.new

body = DatadogAPIClient::V2::Watch.new({
  data: DatadogAPIClient::V2::WatchData.new({
    attributes: DatadogAPIClient::V2::WatchDataAttributes.new({
      application_id: "aaaaaaaa-1111-2222-3333-bbbbbbbbbbbb",
      event_id: "11111111-2222-3333-4444-555555555555",
      timestamp: "2026-01-13T17:15:53.208340Z",
    }),
    type: DatadogAPIClient::V2::WatchDataType::RUM_REPLAY_WATCH,
  }),
})
p api_instance.create_rum_replay_session_watch("00000000-0000-0000-0000-000000000001", body)
