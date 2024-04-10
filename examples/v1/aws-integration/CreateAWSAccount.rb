# Create an AWS integration returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::AWSIntegrationAPI.new

body = DatadogAPIClient::V1::AWSAccount.new({
  account_id: "163662907100",
  account_specific_namespace_rules: {
    auto_scaling: false,
  },
  cspm_resource_collection_enabled: true,
  excluded_regions: [
    "us-east-1",
    "us-west-2",
  ],
  extended_resource_collection_enabled: true,
  filter_tags: [
    "$KEY:$VALUE",
  ],
  host_tags: [
    "$KEY:$VALUE",
  ],
  metrics_collection_enabled: false,
  role_name: "DatadogAWSIntegrationRole",
})
p api_instance.create_aws_account(body)
