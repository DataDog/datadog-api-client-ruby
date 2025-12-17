# List team connections returns "OK" response with pagination

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::TeamsAPI.new
api_instance.list_team_connections_with_pagination() { |item| puts item }
