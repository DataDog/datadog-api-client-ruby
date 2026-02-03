# Delete replay heatmap snapshot returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RumReplayHeatmapsAPI.new
api_instance.delete_replay_heatmap_snapshot("00000000-0000-0000-0000-000000000001")
