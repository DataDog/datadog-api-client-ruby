# Create an AWS WIF intake mapping returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AWSWIFAPI.new

body = DatadogAPIClient::V2::AwsWifIntakeMappingCreateRequest.new({
  data: DatadogAPIClient::V2::AwsWifIntakeMappingCreateData.new({
    attributes: DatadogAPIClient::V2::AwsWifIntakeMappingAttributes.new({
      arn_pattern: "arn:aws:iam::123456789012:role/my-agent-role",
    }),
    type: DatadogAPIClient::V2::AwsWifIntakeMappingType::AWS_WIF_INTAKE_MAPPING,
  }),
})
p api_instance.create_aws_wif_intake_mapping(body)
