# Count cases returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.count_cases".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new
p api_instance.count_cases()
