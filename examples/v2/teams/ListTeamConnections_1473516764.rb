# List team connections with filters returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_team_connections".to_sym] = true
end
api_instance = DatadogAPIClient::V2::TeamsAPI.new
opts = {
  filter_sources: [
    "github",
  ],
  page_size: 10,
}
p api_instance.list_team_connections(opts)
