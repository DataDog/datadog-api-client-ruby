# Get a GitHub cloud authentication intake mapping returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.get_git_hub_cloud_auth_intake_mapping".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CloudAuthenticationAPI.new
p api_instance.get_git_hub_cloud_auth_intake_mapping("intake_mapping_id")
