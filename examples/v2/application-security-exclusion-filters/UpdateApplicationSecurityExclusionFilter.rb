# Update an ASM Exclusion filter returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ApplicationSecurityExclusionFiltersAPI.new

body = DatadogAPIClient::V2::ApplicationSecurityExclusionFilterUpdateRequest.new({
  data: DatadogAPIClient::V2::ApplicationSecurityExclusionFilterUpdateData.new({
    attributes: DatadogAPIClient::V2::ApplicationSecurityExclusionFilterUpdateAttributes.new({
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
        DatadogAPIClient::V2::ApplicationSecurityExclusionFilterRulesTarget.new({
          rule_id: "dog-913-009",
        }),
      ],
      scope: [
        DatadogAPIClient::V2::ApplicationSecurityExclusionFilterScope.new({
          env: "dd-appsec-php-support",
          service: "anil-php-weblog",
        }),
      ],
    }),
    id: "3dd-0uc-h1s",
    type: DatadogAPIClient::V2::ApplicationSecurityExclusionFilterType::EXCLUSION_FILTER,
  }),
})
p api_instance.update_application_security_exclusion_filter("exclusion_filter_id", body)
