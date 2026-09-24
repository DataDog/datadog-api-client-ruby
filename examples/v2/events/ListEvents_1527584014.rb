# Get a list of events returns "OK" response with pagination

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::EventsAPI.new
opts = {
  filter_from: "now-15m",
  filter_to: "now",
  page_limit: 2,
}
api_instance.list_events_with_pagination(opts) { |item| puts item }
