# Create a tag indexing rule exemption returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_tag_indexing_rule_exemption".to_sym] = true
end
api_instance = DatadogAPIClient::V2::MetricsAPI.new

body = DatadogAPIClient::V2::TagIndexingRuleExemptionCreateRequest.new({
  data: DatadogAPIClient::V2::TagIndexingRuleExemptionCreateData.new({
    attributes: DatadogAPIClient::V2::TagIndexingRuleExemptionCreateAttributes.new({
      reason: "This metric has a pre-existing tag configuration.",
    }),
    type: DatadogAPIClient::V2::TagIndexingRuleExemptionType::TAG_INDEXING_RULE_EXEMPTIONS,
  }),
})
p api_instance.create_tag_indexing_rule_exemption("metric_name", body)
