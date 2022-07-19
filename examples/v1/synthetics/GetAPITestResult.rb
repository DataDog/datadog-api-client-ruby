# Get an API test result returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
p api_instance.get_api_test_result("hwb-332-3xe", "3420446318379485707")
