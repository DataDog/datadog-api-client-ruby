# Get a tag rule compliance score returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_tag_rule_score".to_sym] = true
end
api_instance = DatadogAPIClient::V2::TagRulesAPI.new
p api_instance.get_tag_rule_score("rule_id")
