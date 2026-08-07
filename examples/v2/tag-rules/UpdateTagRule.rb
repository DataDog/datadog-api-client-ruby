# Update a tag rule returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_tag_rule".to_sym] = true
end
api_instance = DatadogAPIClient::V2::TagRulesAPI.new

body = DatadogAPIClient::V2::TagRuleUpdateRequest.new({
  data: DatadogAPIClient::V2::TagRuleUpdateData.new({
    attributes: DatadogAPIClient::V2::TagRuleUpdateAttributes.new({
      policy_type: DatadogAPIClient::V2::TagRuleType::SURFACING,
      tag_value_patterns: [],
    }),
    id: "123",
    type: DatadogAPIClient::V2::TagRuleResourceType::TAG_POLICY,
  }),
})
p api_instance.update_tag_rule("policy_id", body)
