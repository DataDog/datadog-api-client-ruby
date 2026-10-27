# Update a tag indexing rule exemption returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.update_tag_indexing_rule_exemption".to_sym] = true
end
api_instance = DatadogAPIClient::V2::MetricsAPI.new

body = DatadogAPIClient::V2::TagIndexingRuleExemptionUpdateRequest.new({
  data: DatadogAPIClient::V2::TagIndexingRuleExemptionUpdateData.new({
    attributes: DatadogAPIClient::V2::TagIndexingRuleExemptionUpdateAttributes.new({
      reason: "This metric must remain exempt because of its query requirements.",
    }),
    type: DatadogAPIClient::V2::TagIndexingRuleExemptionType::TAG_INDEXING_RULE_EXEMPTIONS,
  }),
})
p api_instance.update_tag_indexing_rule_exemption("metric_name", body)
