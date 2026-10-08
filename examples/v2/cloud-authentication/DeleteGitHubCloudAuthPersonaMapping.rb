# Delete a GitHub cloud auth persona mapping returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.delete_git_hub_cloud_auth_persona_mapping".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CloudAuthenticationAPI.new
api_instance.delete_git_hub_cloud_auth_persona_mapping("persona_mapping_id")
