# Delete a user profile returns "Deletion accepted; the profile will be removed asynchronously" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.delete_user_profile".to_sym] = true
end
api_instance = DatadogAPIClient::V2::RumAudienceManagementAPI.new
p api_instance.delete_user_profile("user-1234")
