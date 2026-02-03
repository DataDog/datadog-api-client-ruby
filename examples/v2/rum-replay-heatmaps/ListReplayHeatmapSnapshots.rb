# List replay heatmap snapshots returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RumReplayHeatmapsAPI.new
p api_instance.list_replay_heatmap_snapshots("/home")
