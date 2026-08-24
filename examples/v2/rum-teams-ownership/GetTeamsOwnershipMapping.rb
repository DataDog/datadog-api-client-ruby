# Get a teams ownership mapping returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RumTeamsOwnershipAPI.new

# there is a valid "teams_ownership_mapping" in the system
TEAMS_OWNERSHIP_MAPPING_DATA_ID = ENV["TEAMS_OWNERSHIP_MAPPING_DATA_ID"]
p api_instance.get_teams_ownership_mapping(TEAMS_OWNERSHIP_MAPPING_DATA_ID)
