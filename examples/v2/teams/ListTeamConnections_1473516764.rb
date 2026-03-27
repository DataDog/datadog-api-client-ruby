# List team connections with filters returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::TeamsAPI.new
opts = {
  filter_sources: [
    "github",
  ],
  page_size: 10,
}
p api_instance.list_team_connections(opts)
