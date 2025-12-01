# Get team hierarchy links returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::TeamsAPI.new

# there is a valid "team_hierarchy_link" in the system
TEAM_HIERARCHY_LINK_DATA_RELATIONSHIPS_PARENT_TEAM_DATA_ID = ENV["TEAM_HIERARCHY_LINK_DATA_RELATIONSHIPS_PARENT_TEAM_DATA_ID"]
TEAM_HIERARCHY_LINK_DATA_RELATIONSHIPS_SUB_TEAM_DATA_ID = ENV["TEAM_HIERARCHY_LINK_DATA_RELATIONSHIPS_SUB_TEAM_DATA_ID"]
opts = {
  filter_parent_team: TEAM_HIERARCHY_LINK_DATA_RELATIONSHIPS_PARENT_TEAM_DATA_ID,
  filter_sub_team: TEAM_HIERARCHY_LINK_DATA_RELATIONSHIPS_SUB_TEAM_DATA_ID,
  page_number: 0,
  page_size: 100,
}
p api_instance.list_team_hierarchy_links(opts)
