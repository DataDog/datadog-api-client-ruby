# List rum replay session watchers returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RumReplayViewershipAPI.new
p api_instance.list_rum_replay_session_watchers("00000000-0000-0000-0000-000000000001")
