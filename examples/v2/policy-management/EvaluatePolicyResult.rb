# Evaluate policy result returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.evaluate_policy_result".to_sym] = true
end
api_instance = DatadogAPIClient::V2::PolicyManagementAPI.new
p api_instance.evaluate_policy_result("SAML")
