# Get a change request returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_change_request".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ChangeManagementAPI.new
p api_instance.get_change_request("change_request_id")
