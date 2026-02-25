# Delete an AWS cloud authentication persona mapping returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_aws_cloud_auth_persona_mapping".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CloudAuthenticationAPI.new
api_instance.delete_aws_cloud_auth_persona_mapping("persona_mapping_id")
