# Get tag policy score returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_tag_policy_score".to_sym] = true
end
api_instance = DatadogAPIClient::V2::TagPoliciesAPI.new
p api_instance.get_tag_policy_score("123")
