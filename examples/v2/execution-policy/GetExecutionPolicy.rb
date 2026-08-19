# Get an execution policy returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_execution_policy".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ExecutionPolicyAPI.new

# there is a valid "execution_policy" in the system
EXECUTION_POLICY_DATA_ID = ENV["EXECUTION_POLICY_DATA_ID"]
p api_instance.get_execution_policy(EXECUTION_POLICY_DATA_ID)
