# Update a tag policy returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_tag_policy".to_sym] = true
end
api_instance = DatadogAPIClient::V2::TagPoliciesAPI.new

body = DatadogAPIClient::V2::TagPolicyUpdateRequest.new({
  data: DatadogAPIClient::V2::TagPolicyDataUpdateRequest.new({
    attributes: DatadogAPIClient::V2::TagPolicyAttributesUpdateRequest.new({
      enabled: true,
      negated: false,
      policy_name: "production-tags-policy",
      required: true,
      scope: "env",
      source: "logs",
      tag_key: "service",
      tag_value_patterns: [
        "api",
        "web",
      ],
    }),
    type: DatadogAPIClient::V2::TagPolicyType::TAG_POLICY,
  }),
})
p api_instance.update_tag_policy("123", body)
