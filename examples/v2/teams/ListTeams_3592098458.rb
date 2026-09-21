# Get all teams returns "OK" response with pagination

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::TeamsAPI.new
opts = {
  page_size: 2,
}
api_instance.list_teams_with_pagination(opts) { |item| puts item }
