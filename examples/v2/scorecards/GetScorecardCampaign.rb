# Get a campaign returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ScorecardsAPI.new
p api_instance.get_scorecard_campaign("c10ODp0VCrrIpXmz")
