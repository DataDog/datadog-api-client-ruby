# Get a list of events returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::EventsAPI.new
p api_instance.list_events(9223372036854775807, 9223372036854775807)
