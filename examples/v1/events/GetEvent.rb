# Get an event returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::EventsAPI.new
p api_instance.get_event(9223372036854775807)
