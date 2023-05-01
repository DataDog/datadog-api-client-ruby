# Get the list of all Synthetic tests returns "OK - Returns the list of all Synthetic tests." response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
p api_instance.list_tests()
