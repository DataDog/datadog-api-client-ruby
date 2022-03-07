# Get a list of RUM events returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RUMAPI.new
p api_instance.list_rum_events()
