# Update tag pipeline ruleset returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new

body = DatadogAPIClient::V2::UpdateRulesetRequest.new({
  data: DatadogAPIClient::V2::UpdateRulesetRequestData.new({
    attributes: DatadogAPIClient::V2::UpdateRulesetRequestDataAttributes.new({
      enabled: true,
      last_version: 3611102,
      rules: [
        DatadogAPIClient::V2::UpdateRulesetRequestDataAttributesRulesItems.new({
          enabled: true,
          mapping: DatadogAPIClient::V2::UpdateRulesetRequestDataAttributesRulesItemsMapping.new({
            destination_key: "team_owner",
            if_not_exists: true,
            source_keys: [
              "account_name",
              "account_id",
            ],
          }),
          name: "Account Name Mapping",
          query: nil,
          reference_table: nil,
        }),
      ],
    }),
    id: "New Ruleset",
    type: DatadogAPIClient::V2::UpdateRulesetRequestDataType::UPDATE_RULESET,
  }),
})
p api_instance.update_tag_pipelines_ruleset("ee10c3ff-312f-464c-b4f6-46adaa6d00a1", body)
