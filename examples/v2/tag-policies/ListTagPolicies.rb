# List tag policies returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_tag_policies".to_sym] = true
end
api_instance = DatadogAPIClient::V2::TagPoliciesAPI.new
p api_instance.list_tag_policies()
