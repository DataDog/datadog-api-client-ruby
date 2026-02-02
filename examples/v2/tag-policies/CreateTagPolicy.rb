# Create a tag policy returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_tag_policy".to_sym] = true
end
api_instance = DatadogAPIClient::V2::TagPoliciesAPI.new

body = DatadogAPIClient::V2::TagPolicyCreateRequest.new({
  data: DatadogAPIClient::V2::TagPolicyDataRequest.new({
    attributes: DatadogAPIClient::V2::TagPolicyAttributesRequest.new({
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
p api_instance.create_tag_policy(body)
