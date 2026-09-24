# Get a campaign returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::ScorecardsAPI.new
p api_instance.get_scorecard_campaign("c10ODp0VCrrIpXmz")
