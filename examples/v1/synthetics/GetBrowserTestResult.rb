# Get a browser test result returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
p api_instance.get_browser_test_result("2yy-sem-mjh", "5671719892074090418")
