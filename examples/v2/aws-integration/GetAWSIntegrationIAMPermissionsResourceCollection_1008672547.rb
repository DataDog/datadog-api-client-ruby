# Get resource collection IAM permissions returns "AWS IAM Permissions object" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::AWSIntegrationAPI.new
p api_instance.get_aws_integration_iam_permissions_resource_collection()
