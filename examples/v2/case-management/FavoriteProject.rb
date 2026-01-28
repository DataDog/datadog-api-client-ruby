# Add project to favorites returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.favorite_project".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new
api_instance.favorite_project("project_id")
