# Search Synthetic tests returns "OK - Returns the list of Synthetic tests matching the search." response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
p api_instance.search_tests()
