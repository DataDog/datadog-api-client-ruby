# Delete a campaign returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ScorecardsAPI.new
api_instance.delete_scorecard_campaign("c10ODp0VCrrIpXmz")
