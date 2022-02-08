require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
body = DatadogAPIClient::V1::SyntheticsTriggerBody.new({tests: [DatadogAPIClient::V1::SyntheticsTriggerTest.new({public_id: 'aaa-aaa-aaa'})]}) # SyntheticsTriggerBody | The identifiers of the tests to trigger.

begin
  # Trigger Synthetics tests
  result = api_instance.trigger_tests(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->trigger_tests: #{e}"
end
