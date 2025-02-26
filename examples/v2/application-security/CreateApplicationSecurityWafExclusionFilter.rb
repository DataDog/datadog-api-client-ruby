# Create a WAF exclusion filter returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ApplicationSecurityAPI.new

body = DatadogAPIClient::V2::ApplicationSecurityWafExclusionFilterCreateRequest.new({
  data: DatadogAPIClient::V2::ApplicationSecurityWafExclusionFilterCreateData.new({
    attributes: DatadogAPIClient::V2::ApplicationSecurityWafExclusionFilterCreateAttributes.new({
      description: "Exclude false positives on a path",
      enabled: true,
      parameters: [
        "list.search.query",
      ],
      path_glob: "/accounts/*",
      rules_target: [
        DatadogAPIClient::V2::ApplicationSecurityWafExclusionFilterRulesTarget.new({
          tags: DatadogAPIClient::V2::ApplicationSecurityWafExclusionFilterRulesTargetTags.new({
            category: "attack_attempt",
            type: "lfi",
          }),
        }),
      ],
      scope: [
        DatadogAPIClient::V2::ApplicationSecurityWafExclusionFilterScope.new({
          env: "www",
          service: "prod",
        }),
      ],
    }),
    type: DatadogAPIClient::V2::ApplicationSecurityWafExclusionFilterType::EXCLUSION_FILTER,
  }),
})
p api_instance.create_application_security_waf_exclusion_filter(body)
