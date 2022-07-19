# Get a browser test's latest results summaries returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
p api_instance.get_browser_test_latest_results("2yy-sem-mjh")
