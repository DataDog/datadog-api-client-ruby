# List execution policies with query parameters returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_execution_policies".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ExecutionPolicyAPI.new

# there is a valid "execution_policy" in the system
EXECUTION_POLICY_DATA_ATTRIBUTES_CREATED_BY = ENV["EXECUTION_POLICY_DATA_ATTRIBUTES_CREATED_BY"]
EXECUTION_POLICY_DATA_ATTRIBUTES_NAME = ENV["EXECUTION_POLICY_DATA_ATTRIBUTES_NAME"]
EXECUTION_POLICY_DATA_ID = ENV["EXECUTION_POLICY_DATA_ID"]
opts = {
  page_size: 10,
  page_number: 0,
  filter_name: EXECUTION_POLICY_DATA_ATTRIBUTES_NAME,
  filter_ids: [
    EXECUTION_POLICY_DATA_ID,
  ],
  filter_integration: [
    ExecutionPolicyIntegration::INTEGRATION_SCRIPT,
  ],
  filter_effects: [
    ExecutionPolicyEffect::ALLOW,
  ],
  filter_creator_ids: [
    EXECUTION_POLICY_DATA_ATTRIBUTES_CREATED_BY,
  ],
  sort: [
    "-created_at",
  ],
}
p api_instance.list_execution_policies(opts)
