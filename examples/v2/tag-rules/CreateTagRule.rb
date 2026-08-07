# Create a tag rule returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_tag_rule".to_sym] = true
end
api_instance = DatadogAPIClient::V2::TagRulesAPI.new

body = DatadogAPIClient::V2::TagRuleCreateRequest.new({
  data: DatadogAPIClient::V2::TagRuleCreateData.new({
    attributes: DatadogAPIClient::V2::TagRuleCreateAttributes.new({
      enabled: true,
      negated: false,
      policy_name: "Service tag must be one of api or web",
      policy_type: DatadogAPIClient::V2::TagRuleCreateType::SURFACING,
      required: true,
      scope: "env",
      source: DatadogAPIClient::V2::TagRuleSource::LOGS,
      tag_key: "service",
      tag_value_patterns: [
        "api",
        "web",
      ],
    }),
    type: DatadogAPIClient::V2::TagRuleResourceType::TAG_POLICY,
  }),
})
p api_instance.create_tag_rule(body)
