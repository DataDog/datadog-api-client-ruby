# Get case watchers returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_case_watchers".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new
p api_instance.list_case_watchers("case_id")
