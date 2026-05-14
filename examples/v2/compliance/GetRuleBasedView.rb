# Get the rule-based view of compliance findings returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_rule_based_view".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ComplianceAPI.new
p api_instance.get_rule_based_view(1739982278000)
