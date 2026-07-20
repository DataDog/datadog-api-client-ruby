# Create a tag indexing rule with exclude-mode tag usage fields returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_tag_indexing_rule".to_sym] = true
end
api_instance = DatadogAPIClient::V2::MetricsAPI.new

body = DatadogAPIClient::V2::TagIndexingRuleCreateRequest.new({
  data: DatadogAPIClient::V2::TagIndexingRuleCreateData.new({
    attributes: DatadogAPIClient::V2::TagIndexingRuleCreateAttributes.new({
      exclude_tags_mode: true,
      ignored_metric_name_matches: [],
      metric_name_matches: [
        "dd.test.*",
      ],
      name: "my-indexing-rule",
      options: DatadogAPIClient::V2::TagIndexingRuleOptions.new({
        data: DatadogAPIClient::V2::TagIndexingRuleOptionsData.new({
          dynamic_tags: DatadogAPIClient::V2::TagIndexingRuleDynamicTags.new({
            exclude_not_queried_window_seconds: 3600,
            exclude_not_used_in_assets: true,
          }),
          manage_preexisting_metrics: true,
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
