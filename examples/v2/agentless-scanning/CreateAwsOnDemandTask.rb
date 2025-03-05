# Post an AWS on demand task returns "AWS on demand task created successfully." response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AgentlessScanningAPI.new

body = DatadogAPIClient::V2::AwsOnDemandCreateRequest.new({
  data: DatadogAPIClient::V2::AwsOnDemandCreateData.new({
    attributes: DatadogAPIClient::V2::AwsOnDemandCreateAttributes.new({
      arn: "arn:aws:lambda:eu-west-3:376334461865:function:This-Is-An-Api-Spec-Test",
    }),
    type: DatadogAPIClient::V2::AwsOnDemandType::AWS_RESOURCE,
  }),
})
p api_instance.create_aws_on_demand_task(body)
