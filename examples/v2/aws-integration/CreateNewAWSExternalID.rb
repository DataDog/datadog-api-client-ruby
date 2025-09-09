# Generate a new external ID returns "AWS External ID object" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AWSIntegrationAPI.new
p api_instance.create_new_aws_external_id()
