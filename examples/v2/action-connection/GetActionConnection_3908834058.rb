# Get a GitHub personal access token Action Connection

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::ActionConnectionAPI.new

# there is a valid "github_pat_action_connection" in the system
GITHUB_PAT_ACTION_CONNECTION_DATA_ID = ENV["GITHUB_PAT_ACTION_CONNECTION_DATA_ID"]
p api_instance.get_action_connection(GITHUB_PAT_ACTION_CONNECTION_DATA_ID)
