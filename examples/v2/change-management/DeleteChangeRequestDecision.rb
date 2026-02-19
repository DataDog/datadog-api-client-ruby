# Delete a change request decision returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_change_request_decision".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ChangeManagementAPI.new
p api_instance.delete_change_request_decision("change_request_id", "decision_id")
