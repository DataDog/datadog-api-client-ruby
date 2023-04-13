# Search for incidents returns "OK" response with pagination

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.search_incidents".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new
opts = {
  page_size: 2,
}
api_instance.search_incidents_with_pagination("state:(active OR stable OR resolved)", opts) { |item| puts item }
