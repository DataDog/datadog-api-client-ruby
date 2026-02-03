# Delete rum replay session watch returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RumReplayViewershipAPI.new
api_instance.delete_rum_replay_session_watch("00000000-0000-0000-0000-000000000001")
