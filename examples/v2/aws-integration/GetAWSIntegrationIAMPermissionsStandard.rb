# Get AWS integration standard IAM permissions returns "AWS integration standard IAM permissions." response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AWSIntegrationAPI.new
p api_instance.get_aws_integration_iam_permissions_standard()
