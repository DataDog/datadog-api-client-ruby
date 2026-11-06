# Get a Custom OIDC persona mapping returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.get_oidc_cloud_auth_persona_mapping".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CloudAuthenticationAPI.new

# there is a valid "oidc_cloud_auth_persona_mapping" in the system
OIDC_CLOUD_AUTH_PERSONA_MAPPING_DATA_ID = ENV["OIDC_CLOUD_AUTH_PERSONA_MAPPING_DATA_ID"]
p api_instance.get_oidc_cloud_auth_persona_mapping(OIDC_CLOUD_AUTH_PERSONA_MAPPING_DATA_ID)
