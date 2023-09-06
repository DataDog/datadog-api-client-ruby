# Get all teams returns "OK" response with pagination

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::TeamsAPI.new
opts = {
  page_size: 2,
}
api_instance.list_teams_with_pagination(opts) { |item| puts item }
