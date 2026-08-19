# Delete an execution policy returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_execution_policy".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ExecutionPolicyAPI.new

# there is a valid "execution_policy" in the system
EXECUTION_POLICY_DATA_ID = ENV["EXECUTION_POLICY_DATA_ID"]
api_instance.delete_execution_policy(EXECUTION_POLICY_DATA_ID)
