# Update a tag indexing rule returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MetricsAPI.new

# there is a valid "tag_indexing_rule" in the system
TAG_INDEXING_RULE_DATA_ID = ENV["TAG_INDEXING_RULE_DATA_ID"]

body = DatadogAPIClient::V2::TagIndexingRuleUpdateRequest.new({
  data: DatadogAPIClient::V2::TagIndexingRuleUpdateData.new({
    attributes: DatadogAPIClient::V2::TagIndexingRuleUpdateAttributes.new({
      ignored_metric_name_matches: [],
      metric_name_matches: [
        "dd.test.*",
      ],
      name: "my-indexing-rule",
      options: DatadogAPIClient::V2::TagIndexingRuleOptions.new({
        data: DatadogAPIClient::V2::TagIndexingRuleOptionsData.new({
          dynamic_tags: DatadogAPIClient::V2::TagIndexingRuleDynamicTags.new({
            queried_tags_window_seconds: 3600,
            related_asset_tags: false,
          }),
          manage_preexisting_metrics: true,
          metric_match: DatadogAPIClient::V2::TagIndexingRuleMetricMatch.new({
            queried_window_seconds: 3600,
          }),
          override_previous_rules: false,
        }),
        version: 1,
      }),
      rule_order: 2,
      tags: [
        "env",
        "service",
      ],
    }),
    type: DatadogAPIClient::V2::TagIndexingRuleType::TAG_INDEXING_RULES,
  }),
})
p api_instance.update_tag_indexing_rule(TAG_INDEXING_RULE_DATA_ID, body)
