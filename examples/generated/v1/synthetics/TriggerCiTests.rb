require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
body = DatadogAPIClient::V1::SyntheticsCITestBody.new # SyntheticsCITestBody | Details of the test to trigger.

begin
  # Trigger tests from CI/CD pipelines
  result = api_instance.trigger_ci_tests(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->trigger_ci_tests: #{e}"
end
