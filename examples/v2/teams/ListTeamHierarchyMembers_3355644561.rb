# Get team hierarchy members filters direct members

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.list_team_hierarchy_members".to_sym] = true
end
api_instance = DatadogAPIClient::V2::TeamsAPI.new

# there is a valid "dd_team" in the system
DD_TEAM_DATA_ID = ENV["DD_TEAM_DATA_ID"]
opts = {
  filter_keyword: "Example-Team",
  filter_is_direct_only: true,
  filter_include_service_accounts: false,
}
p api_instance.list_team_hierarchy_members(DD_TEAM_DATA_ID, opts)
