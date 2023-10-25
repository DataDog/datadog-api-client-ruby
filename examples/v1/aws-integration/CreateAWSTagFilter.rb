# Set an AWS tag filter returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::AWSIntegrationAPI.new

body = DatadogAPIClient::V1::AWSTagFilterCreateRequest.new({
  account_id: "123456789012",
  namespace: DatadogAPIClient::V1::AWSNamespace::ELB,
  tag_filter_str: "prod*",
})
p api_instance.create_aws_tag_filter(body)
