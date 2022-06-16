# Take graph snapshots returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SnapshotsAPI.new
opts = {
  metric_query: "avg:system.load.1{*}",
  title: "System load",
  height: 400,
  width: 600,
}
p api_instance.get_graph_snapshot((Time.now + -1 * 86400).to_i, Time.now.to_i, opts)
