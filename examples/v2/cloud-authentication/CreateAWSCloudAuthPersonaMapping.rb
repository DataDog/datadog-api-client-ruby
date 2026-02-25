# Create an AWS cloud authentication persona mapping returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_aws_cloud_auth_persona_mapping".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CloudAuthenticationAPI.new

body = DatadogAPIClient::V2::AWSCloudAuthPersonaMappingCreateRequest.new({
  data: DatadogAPIClient::V2::AWSCloudAuthPersonaMappingCreateData.new({
    attributes: DatadogAPIClient::V2::AWSCloudAuthPersonaMappingCreateAttributes.new({
      account_identifier: "test@test.com",
      arn_pattern: "arn:aws:iam::123456789012:user/testuser",
    }),
    type: DatadogAPIClient::V2::AWSCloudAuthPersonaMappingType::AWS_CLOUD_AUTH_CONFIG,
  }),
})
p api_instance.create_aws_cloud_auth_persona_mapping(body)
