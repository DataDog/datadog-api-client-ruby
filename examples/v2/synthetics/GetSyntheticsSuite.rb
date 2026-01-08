# Synthetics: Get a suite returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SyntheticsAPI.new
p api_instance.get_synthetics_suite("public_id")
