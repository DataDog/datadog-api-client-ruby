# Generate new external ID returns "AWS External ID object" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_new_aws_external_id".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AWSIntegrationAPI.new
p api_instance.create_new_aws_external_id()
