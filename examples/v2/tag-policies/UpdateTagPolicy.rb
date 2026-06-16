# Update a tag policy returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_tag_policy".to_sym] = true
end
api_instance = DatadogAPIClient::V2::TagPoliciesAPI.new

body = DatadogAPIClient::V2::TagPolicyUpdateRequest.new({
  data: DatadogAPIClient::V2::TagPolicyUpdateData.new({
    attributes: DatadogAPIClient::V2::TagPolicyUpdateAttributes.new({
      policy_type: DatadogAPIClient::V2::TagPolicyType::SURFACING,
      tag_value_patterns: [],
    }),
    id: "123",
    type: DatadogAPIClient::V2::TagPolicyResourceType::TAG_POLICY,
  }),
})
p api_instance.update_tag_policy("policy_id", body)
