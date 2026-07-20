# Update a tag indexing rule with exclude-mode tag usage fields returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_tag_indexing_rule".to_sym] = true
end
api_instance = DatadogAPIClient::V2::MetricsAPI.new

# there is a valid "tag_indexing_rule_exclude_mode" in the system
TAG_INDEXING_RULE_EXCLUDE_MODE_DATA_ID = ENV["TAG_INDEXING_RULE_EXCLUDE_MODE_DATA_ID"]

body = DatadogAPIClient::V2::TagIndexingRuleUpdateRequest.new({
  data: DatadogAPIClient::V2::TagIndexingRuleUpdateData.new({
    attributes: DatadogAPIClient::V2::TagIndexingRuleUpdateAttributes.new({
      exclude_tags_mode: true,
      ignored_metric_name_matches: [],
      metric_name_matches: [
        "dd.test.*",
      ],
      name: "my-indexing-rule",
      options: DatadogAPIClient::V2::TagIndexingRuleOptions.new({
        data: DatadogAPIClient::V2::TagIndexingRuleOptionsData.new({
          dynamic_tags: DatadogAPIClient::V2::TagIndexingRuleDynamicTags.new({
            exclude_not_queried_window_seconds: 7200,
            exclude_not_used_in_assets: true,
          }),
          manage_preexisting_metrics: true,
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
p api_instance.update_tag_indexing_rule(TAG_INDEXING_RULE_EXCLUDE_MODE_DATA_ID, body)
