# Get team hierarchy members returns "OK" response with pagination

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
  page_size: 1,
}
api_instance.list_team_hierarchy_members_with_pagination(DD_TEAM_DATA_ID, opts) { |item| puts item }
