# Generate replay summary returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.generate_replay_summary".to_sym] = true
end
api_instance = DatadogAPIClient::V2::RumReplayAPI.new

body = DatadogAPIClient::V2::ReplaySummaryRequest.new({
  data: DatadogAPIClient::V2::ReplaySummaryDataRequest.new({
    type: DatadogAPIClient::V2::ReplaySummaryRequestType::REPLAY_SUMMARY_REQUEST,
  }),
})
p api_instance.generate_replay_summary("00000000-0000-0000-0000-000000000001", "rum", body)
