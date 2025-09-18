# Get resource collection IAM permissions returns "AWS integration resource collection IAM permissions." response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AWSIntegrationAPI.new
p api_instance.get_aws_integration_iam_permissions_resource_collection()
