# List AWS cloud authentication persona mappings returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_aws_cloud_auth_persona_mappings".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CloudAuthenticationAPI.new
p api_instance.list_aws_cloud_auth_persona_mappings()
