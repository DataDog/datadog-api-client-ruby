# Get an event returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::EventsAPI.new
p api_instance.get_event("AZeF-nTCAABzkAgGXzYPtgAA")
