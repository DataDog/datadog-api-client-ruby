# Get replay analysis issue returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_replay_analysis_issue".to_sym] = true
end
api_instance = DatadogAPIClient::V2::RumReplayAnalysisAPI.new
p api_instance.get_replay_analysis_issue("00000000-0000-0000-0000-000000000001")
