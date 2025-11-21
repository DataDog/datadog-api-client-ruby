# Get team hierarchy links returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::TeamsAPI.new
p api_instance.get_team_hierarchy_links()
