# Create a tag policy returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_tag_policy".to_sym] = true
end
api_instance = DatadogAPIClient::V2::TagPoliciesAPI.new

body = DatadogAPIClient::V2::TagPolicyCreateRequest.new({
  data: DatadogAPIClient::V2::TagPolicyCreateData.new({
    attributes: DatadogAPIClient::V2::TagPolicyCreateAttributes.new({
      enabled: true,
      negated: false,
      policy_name: "Service tag must be one of api or web",
      policy_type: DatadogAPIClient::V2::TagPolicyCreateType::SURFACING,
      required: true,
      scope: "env",
      source: DatadogAPIClient::V2::TagPolicySource::LOGS,
      tag_key: "service",
      tag_value_patterns: [
        "api",
        "web",
      ],
    }),
    type: DatadogAPIClient::V2::TagPolicyResourceType::TAG_POLICY,
  }),
})
p api_instance.create_tag_policy(body)
