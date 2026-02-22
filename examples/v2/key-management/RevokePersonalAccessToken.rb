# Revoke personal access token returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.revoke_personal_access_token".to_sym] = true
end
api_instance = DatadogAPIClient::V2::KeyManagementAPI.new
api_instance.revoke_personal_access_token("9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d")
