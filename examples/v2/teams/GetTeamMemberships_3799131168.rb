# Get team memberships returns "Represents a user's association to a team" response with pagination

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::TeamsAPI.new
opts = {
  page_size: 2,
}
api_instance.get_team_memberships_with_pagination("2e06bf2c-193b-41d4-b3c2-afccc080458f", opts) { |item| puts item }
