# Update Scanning Rule returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SensitiveDataScannerAPI.new

# the "scanning_group" has a "scanning_rule"
RULE_DATA_ID = ENV["RULE_DATA_ID"]

# there is a valid "scanning_group" in the system
GROUP_DATA_ID = ENV["GROUP_DATA_ID"]

body = DatadogAPIClient::V2::SensitiveDataScannerRuleUpdateRequest.new({
  meta: DatadogAPIClient::V2::SensitiveDataScannerMetaVersionOnly.new({}),
  data: DatadogAPIClient::V2::SensitiveDataScannerRuleUpdate.new({
    id: RULE_DATA_ID,
    type: DatadogAPIClient::V2::SensitiveDataScannerRuleType::SENSITIVE_DATA_SCANNER_RULE,
    attributes: DatadogAPIClient::V2::SensitiveDataScannerRuleAttributes.new({
      name: "Example-Sensitive-Data-Scanner",
      pattern: "pattern",
      text_replacement: DatadogAPIClient::V2::SensitiveDataScannerTextReplacement.new({
        type: DatadogAPIClient::V2::SensitiveDataScannerTextReplacementType::NONE,
      }),
      tags: [
        "sensitive_data:true",
      ],
      is_enabled: true,
      priority: 5,
    }),
    relationships: DatadogAPIClient::V2::SensitiveDataScannerRuleRelationships.new({
      group: DatadogAPIClient::V2::SensitiveDataScannerGroupData.new({
        data: DatadogAPIClient::V2::SensitiveDataScannerGroup.new({
          type: DatadogAPIClient::V2::SensitiveDataScannerGroupType::SENSITIVE_DATA_SCANNER_GROUP,
          id: GROUP_DATA_ID,
        }),
      }),
    }),
  }),
})
p api_instance.update_scanning_rule(RULE_DATA_ID, body)
