# Create a ASM WAF Exclusion filter returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ASMExclusionFiltersAPI.new

body = DatadogAPIClient::V2::ASMExclusionFilterCreateRequest.new({
  data: DatadogAPIClient::V2::ASMExclusionFilterCreateData.new({
    type: DatadogAPIClient::V2::ASMExclusionFilterType::EXCLUSION_FILTER,
    attributes: DatadogAPIClient::V2::ASMExclusionFilterCreateAttributes.new({
      description: "my description",
      enabled: true,
      path_glob: "*",
      rules_target: [
        DatadogAPIClient::V2::ASMExclusionFilterRulesTarget.new({}),
      ],
      scope: [
        DatadogAPIClient::V2::ASMExclusionFilterScope.new({
          env: "staging",
          service: "container-resolver",
        }),
      ],
    }),
  }),
})
p api_instance.create_asm_exclusion_filter(body)
