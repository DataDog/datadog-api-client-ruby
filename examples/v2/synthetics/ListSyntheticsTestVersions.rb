# Get version history of a test returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SyntheticsAPI.new
p api_instance.list_synthetics_test_versions("public_id")
