# Get a list of RUM events returns "OK" response with pagination

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RUMAPI.new
opts = {
  page_limit: 2,
}
api_instance.list_rum_events_with_pagination(opts) { |item| puts item }
