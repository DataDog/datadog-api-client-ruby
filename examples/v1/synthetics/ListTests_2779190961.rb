# Client is resilient to enum and oneOf deserialization errors

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
p api_instance.list_tests()
