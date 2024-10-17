# Create an ASM Exclusion filter returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ApplicationSecurityExclusionFiltersAPI.new

body = DatadogAPIClient::V2::ApplicationSecurityExclusionFilterCreateRequest.new({
  data: DatadogAPIClient::V2::ApplicationSecurityExclusionFilterCreateData.new({
    type: DatadogAPIClient::V2::ApplicationSecurityExclusionFilterType::EXCLUSION_FILTER,
    attributes: DatadogAPIClient::V2::ApplicationSecurityExclusionFilterCreateAttributes.new({
      description: "my description",
      enabled: true,
      path_glob: "*",
      rules_target: [
        DatadogAPIClient::V2::ApplicationSecurityExclusionFilterRulesTarget.new({}),
      ],
      scope: [
        DatadogAPIClient::V2::ApplicationSecurityExclusionFilterScope.new({
          env: "staging",
          service: "container-resolver",
        }),
      ],
    }),
  }),
})
p api_instance.create_application_security_exclusion_filter(body)
