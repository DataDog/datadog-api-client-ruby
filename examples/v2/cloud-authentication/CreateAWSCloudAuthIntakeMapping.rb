# Create an AWS cloud authentication intake mapping returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.create_aws_cloud_auth_intake_mapping".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CloudAuthenticationAPI.new

# there is an integrated AWS test account for WIF
AWS_WIF_ACCOUNT_V2_DATA_0_ATTRIBUTES_AWS_ACCOUNT_ID = ENV["AWS_WIF_ACCOUNT_V2_DATA_0_ATTRIBUTES_AWS_ACCOUNT_ID"]

body = DatadogAPIClient::V2::AWSCloudAuthIntakeMappingCreateRequest.new({
  data: DatadogAPIClient::V2::AWSCloudAuthIntakeMappingCreateData.new({
    type: DatadogAPIClient::V2::AWSCloudAuthIntakeMappingType::AWS_CLOUD_AUTH_INTAKE_MAPPING,
    attributes: DatadogAPIClient::V2::AWSCloudAuthIntakeMappingCreateAttributes.new({
      arn_pattern: "arn:aws:sts::123456789012:assumed-role/DatadogAgent-de20b7e944abfac3/*",
    }),
  }),
})
p api_instance.create_aws_cloud_auth_intake_mapping(body)
