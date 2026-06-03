# List rum replay viewership history sessions returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RumReplayViewershipAPI.new
p api_instance.list_rum_replay_viewership_history_sessions()
