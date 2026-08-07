# Delete a tag rule returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_tag_rule".to_sym] = true
end
api_instance = DatadogAPIClient::V2::TagRulesAPI.new
api_instance.delete_tag_rule("policy_id")
