# List replay analysis issue sessions returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_replay_analysis_issue_sessions".to_sym] = true
end
api_instance = DatadogAPIClient::V2::RumReplayAnalysisAPI.new
p api_instance.list_replay_analysis_issue_sessions("00000000-0000-0000-0000-000000000001")
