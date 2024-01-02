# Create Cloud Cost Management AWS CUR config returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new

body = DatadogAPIClient::V2::AwsCURConfigPostRequest.new({
  data: DatadogAPIClient::V2::AwsCURConfigPostData.new({
    attributes: DatadogAPIClient::V2::AwsCURConfigPostRequestAttributes.new({
      account_id: "123456789123",
      bucket_name: "dd-cost-bucket",
      bucket_region: "us-east-1",
      report_name: "dd-report-name",
      report_prefix: "dd-report-prefix",
    }),
    type: DatadogAPIClient::V2::AwsCURConfigPostRequestType::AWS_CUR_CONFIG_POST_REQUEST,
  }),
})
p api_instance.create_cost_awscur_config(body)
