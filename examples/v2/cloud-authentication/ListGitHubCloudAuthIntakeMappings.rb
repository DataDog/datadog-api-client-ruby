# List GitHub cloud authentication intake mappings returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.list_git_hub_cloud_auth_intake_mappings".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CloudAuthenticationAPI.new
p api_instance.list_git_hub_cloud_auth_intake_mappings()
