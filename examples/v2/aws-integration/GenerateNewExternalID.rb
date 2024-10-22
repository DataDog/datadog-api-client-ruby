# AWS Integration - Generate new external ID returns "AWS External ID object" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.generate_new_external_id".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AWSIntegrationAPI.new
p api_instance.generate_new_external_id()
