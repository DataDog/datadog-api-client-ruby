# Get a specific version of a test returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SyntheticsAPI.new
p api_instance.get_synthetics_test_version("public_id", 9223372036854775807)
