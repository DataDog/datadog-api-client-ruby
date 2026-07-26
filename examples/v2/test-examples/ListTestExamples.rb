# List test examples returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::TestExamplesAPI.new
p api_instance.list_test_examples()
