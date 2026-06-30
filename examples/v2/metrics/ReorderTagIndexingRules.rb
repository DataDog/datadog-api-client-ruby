# Reorder tag indexing rules returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.reorder_tag_indexing_rules".to_sym] = true
end
api_instance = DatadogAPIClient::V2::MetricsAPI.new

# there is a valid "tag_indexing_rule" in the system
TAG_INDEXING_RULE_DATA_ID = ENV["TAG_INDEXING_RULE_DATA_ID"]

body = DatadogAPIClient::V2::TagIndexingRuleOrderRequest.new({
  data: DatadogAPIClient::V2::TagIndexingRuleOrderData.new({
    attributes: DatadogAPIClient::V2::TagIndexingRuleOrderAttributes.new({
      rule_ids: [
        TAG_INDEXING_RULE_DATA_ID,
      ],
    }),
    type: DatadogAPIClient::V2::TagIndexingRuleType::TAG_INDEXING_RULES,
  }),
})
api_instance.reorder_tag_indexing_rules(body)
