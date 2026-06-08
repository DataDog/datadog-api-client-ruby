# Create a tag indexing rule returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MetricsAPI.new

body = DatadogAPIClient::V2::TagIndexingRuleCreateRequest.new({
  data: DatadogAPIClient::V2::TagIndexingRuleCreateData.new({
    attributes: DatadogAPIClient::V2::TagIndexingRuleCreateAttributes.new({
      exclude_tags_mode: false,
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
      tags: [
        "env",
        "service",
      ],
    }),
    type: DatadogAPIClient::V2::TagIndexingRuleType::TAG_INDEXING_RULES,
  }),
})
p api_instance.create_tag_indexing_rule(body)
