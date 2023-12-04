# Delete an AWS integration returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::AWSIntegrationAPI.new

body = DatadogAPIClient::V1::AWSAccountDeleteRequest.new({
  account_id: "163662907100",
  role_name: "DatadogAWSIntegrationRole",
})
p api_instance.delete_aws_account(body)
