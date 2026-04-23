# Get a browser test's latest results returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SyntheticsAPI.new
p api_instance.list_synthetics_browser_test_latest_results("public_id")
