# Get an AWS cloud authentication persona mapping returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_aws_cloud_auth_persona_mapping".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CloudAuthenticationAPI.new
p api_instance.get_aws_cloud_auth_persona_mapping("persona_mapping_id")
