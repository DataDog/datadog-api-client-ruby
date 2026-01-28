# Remove user as watcher returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.unwatch_case".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new
api_instance.unwatch_case("case_id", "user_id")
