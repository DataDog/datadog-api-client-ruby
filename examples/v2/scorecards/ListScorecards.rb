# List all scorecards returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ScorecardsAPI.new
p api_instance.list_scorecards()
