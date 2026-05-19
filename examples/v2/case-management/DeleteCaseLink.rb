# Delete a case link returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_case_link".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new
api_instance.delete_case_link("804cd682-55f6-4541-ab00-b608b282ea7d")
