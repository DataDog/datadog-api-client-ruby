# Update a ASM Exclusion filter returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ASMExclusionFiltersAPI.new

body = DatadogAPIClient::V2::ASMExclusionFilterUpdateRequest.new({
  data: DatadogAPIClient::V2::ASMExclusionFilterUpdateData.new({
    attributes: DatadogAPIClient::V2::ASMExclusionFilterUpdateAttributes.new({
      description: "My Exclusion filter",
      enabled: true,
      ip_list: [
        "127.0.0.1",
      ],
      parameters: [
        "list.search.query",
      ],
      path_glob: "/lfi_include/*",
      rules_target: [
        DatadogAPIClient::V2::ASMExclusionFilterRulesTarget.new({
          rule_id: "dog-913-009",
        }),
      ],
      scope: [
        DatadogAPIClient::V2::ASMExclusionFilterScope.new({
          env: "dd-appsec-php-support",
          service: "anil-php-weblog",
        }),
      ],
    }),
    id: "3dd-0uc-h1s",
    type: DatadogAPIClient::V2::ASMExclusionFilterType::EXCLUSION_FILTER,
  }),
})
p api_instance.update_asm_exclusion_filter("exclusion_filter_id", body)
