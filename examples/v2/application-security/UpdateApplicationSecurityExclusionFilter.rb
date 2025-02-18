# Update an Application Security exclusion filter returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ApplicationSecurityAPI.new

body = DatadogAPIClient::V2::ApplicationSecurityExclusionFilterRequest.new({
  data: DatadogAPIClient::V2::ApplicationSecurityExclusionFilterResource.new({
    attributes: DatadogAPIClient::V2::ApplicationSecurityExclusionFilterAttributes.new({
      description: "Exclude false positives on a path",
      enabled: true,
      ip_list: [
        "198.51.100.72",
      ],
      on_match: DatadogAPIClient::V2::ApplicationSecurityExclusionFilterOnMatch::MONITOR,
      parameters: [
        "list.search.query",
      ],
      path_glob: "/accounts/*",
      rules_target: [
        DatadogAPIClient::V2::ApplicationSecurityExclusionFilterRulesTarget.new({
          rule_id: "dog-913-009",
          tags: DatadogAPIClient::V2::ApplicationSecurityExclusionFilterRulesTargetTags.new({
            category: "attack_attempt",
            type: "lfi",
          }),
        }),
      ],
      scope: [
        DatadogAPIClient::V2::ApplicationSecurityExclusionFilterScope.new({
          env: "www",
          service: "prod",
        }),
      ],
    }),
    type: DatadogAPIClient::V2::ApplicationSecurityExclusionFilterType::EXCLUSION_FILTER,
  }),
})
p api_instance.update_application_security_exclusion_filter("exclusion_filter_id", body)
