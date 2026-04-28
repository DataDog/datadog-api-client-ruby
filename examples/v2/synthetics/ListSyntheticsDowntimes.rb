# List Synthetics downtimes returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SyntheticsAPI.new
p api_instance.list_synthetics_downtimes()
