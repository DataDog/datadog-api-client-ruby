# Update ruleset returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new

body = DatadogAPIClient::V2::UpdateRulesetRequest.new({
  data: DatadogAPIClient::V2::UpdateRulesetRequestData.new({
    attributes: DatadogAPIClient::V2::UpdateRulesetRequestDataAttributes.new({
      enabled: true,
      last_version: 3601919,
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
    type: DatadogAPIClient::V2::UpdateRulesetRequestDataType::UPDATE_RULESET,
  }),
})
p api_instance.update_ruleset("1c5dae14-237d-4b9a-a515-aa55b3939142", body)
