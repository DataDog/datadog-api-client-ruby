# Add user as watcher returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.watch_case".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new
p api_instance.watch_case("case_id", "user_id")
