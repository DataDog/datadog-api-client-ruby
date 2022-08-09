# List all the RUM applications returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RUMAPI.new
p api_instance.get_rum_applications()
