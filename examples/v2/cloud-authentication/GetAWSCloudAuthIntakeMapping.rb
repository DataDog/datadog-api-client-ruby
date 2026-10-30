# Get an AWS cloud authentication intake mapping returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.get_aws_cloud_auth_intake_mapping".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CloudAuthenticationAPI.new

# there is a valid "aws_cloud_auth_intake_mapping" in the system
AWS_CLOUD_AUTH_INTAKE_MAPPING_DATA_ID = ENV["AWS_CLOUD_AUTH_INTAKE_MAPPING_DATA_ID"]
p api_instance.get_aws_cloud_auth_intake_mapping(AWS_CLOUD_AUTH_INTAKE_MAPPING_DATA_ID)
