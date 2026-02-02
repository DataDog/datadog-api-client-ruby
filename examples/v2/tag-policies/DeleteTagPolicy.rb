# Delete a tag policy returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_tag_policy".to_sym] = true
end
api_instance = DatadogAPIClient::V2::TagPoliciesAPI.new
api_instance.delete_tag_policy("123")
