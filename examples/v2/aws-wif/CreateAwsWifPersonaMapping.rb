# Create an AWS WIF persona mapping returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AWSWIFAPI.new

body = DatadogAPIClient::V2::AwsWifPersonaMappingCreateRequest.new({
  data: DatadogAPIClient::V2::AwsWifPersonaMappingCreateData.new({
    attributes: DatadogAPIClient::V2::AwsWifPersonaMappingCreateAttributes.new({
      account_identifier: "user@example.com",
      arn_pattern: "arn:aws:iam::123456789012:role/my-workload-role",
    }),
    type: DatadogAPIClient::V2::AwsWifPersonaMappingType::AWS_WIF_CONFIG,
  }),
})
p api_instance.create_aws_wif_persona_mapping(body)
