# Get a campaign returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_scorecard_campaign".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ServiceScorecardsAPI.new
p api_instance.get_scorecard_campaign("c10ODp0VCrrIpXmz")
