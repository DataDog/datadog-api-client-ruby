# List case links returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_case_links".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new
p api_instance.list_case_links("CASE", "bf0cbac6-4c16-4cfb-b6bf-ca5e0ec37a4f")
