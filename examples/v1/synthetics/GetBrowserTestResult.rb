# Get a browser test result returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
p api_instance.get_browser_test_result("public_id", "result_id")
