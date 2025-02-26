# Update a WAF exclusion filter returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ApplicationSecurityAPI.new

# there is a valid "exclusion_filter" in the system
EXCLUSION_FILTER_DATA_ID = ENV["EXCLUSION_FILTER_DATA_ID"]

body = DatadogAPIClient::V2::ApplicationSecurityWafExclusionFilterUpdateRequest.new({
  data: DatadogAPIClient::V2::ApplicationSecurityWafExclusionFilterUpdateData.new({
    attributes: DatadogAPIClient::V2::ApplicationSecurityWafExclusionFilterUpdateAttributes.new({
      description: "Exclude false positives on a path",
      enabled: false,
      ip_list: [
        "198.51.100.72",
      ],
      on_match: DatadogAPIClient::V2::ApplicationSecurityWafExclusionFilterOnMatch::MONITOR,
    }),
    type: DatadogAPIClient::V2::ApplicationSecurityWafExclusionFilterType::EXCLUSION_FILTER,
  }),
})
p api_instance.update_application_security_waf_exclusion_filter(EXCLUSION_FILTER_DATA_ID, body)
