# List team connections returns "OK" response with pagination

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_team_connections".to_sym] = true
end
api_instance = DatadogAPIClient::V2::TeamsAPI.new
api_instance.list_team_connections_with_pagination() { |item| puts item }
