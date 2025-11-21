# Get team hierarchy links returns "OK" response with pagination

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::TeamsAPI.new
api_instance.get_team_hierarchy_links_with_pagination() { |item| puts item }
