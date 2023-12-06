# Get a quick list of events returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::EventsAPI.new
opts = {
  filter_query: "datadog-agent",
  filter_from: "2020-09-17T11:48:36+01:00",
  filter_to: "2020-09-17T12:48:36+01:00",
  page_limit: 5,
}
p api_instance.list_events(opts)
