# Poll for test results returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SyntheticsAPI.new
p api_instance.poll_synthetics_test_results("result_ids")
