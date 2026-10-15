# Get team hierarchy members filters names case insensitively

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.get_team_hierarchy_members".to_sym] = true
end
api_instance = DatadogAPIClient::V2::TeamsAPI.new

# there is a valid "dd_team" in the system
DD_TEAM_DATA_ID = ENV["DD_TEAM_DATA_ID"]
opts = {
  filter_keyword: "hIeRaRcHy MeMbEr",
}
p api_instance.get_team_hierarchy_members(DD_TEAM_DATA_ID, opts)
