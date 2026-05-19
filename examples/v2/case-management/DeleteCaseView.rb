# Delete a case view returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_case_view".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new
api_instance.delete_case_view("view_id")
