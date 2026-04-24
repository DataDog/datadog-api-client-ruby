# Get a test result returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SyntheticsAPI.new
p api_instance.get_synthetics_test_result("public_id", "result_id")
