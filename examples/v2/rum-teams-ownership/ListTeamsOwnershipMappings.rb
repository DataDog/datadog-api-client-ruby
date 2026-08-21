# List teams ownership mappings returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RumTeamsOwnershipAPI.new

# there is a valid "teams_ownership_mapping" in the system
TEAMS_OWNERSHIP_MAPPING_DATA_ATTRIBUTES_VIEW_NAME = ENV["TEAMS_OWNERSHIP_MAPPING_DATA_ATTRIBUTES_VIEW_NAME"]
opts = {
  filter_view_name: TEAMS_OWNERSHIP_MAPPING_DATA_ATTRIBUTES_VIEW_NAME,
}
p api_instance.list_teams_ownership_mappings(opts)
