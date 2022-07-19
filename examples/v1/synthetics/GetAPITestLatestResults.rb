# Get an API test's latest results summaries returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
p api_instance.get_api_test_latest_results("hwb-332-3xe")
