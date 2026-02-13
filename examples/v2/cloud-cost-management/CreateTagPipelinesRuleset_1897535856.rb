# Create tag pipeline ruleset with if_tag_exists returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new

body = DatadogAPIClient::V2::CreateRulesetRequest.new({
  data: DatadogAPIClient::V2::CreateRulesetRequestData.new({
    attributes: DatadogAPIClient::V2::CreateRulesetRequestDataAttributes.new({
      enabled: true,
      rules: [
        DatadogAPIClient::V2::CreateRulesetRequestDataAttributesRulesItems.new({
          enabled: true,
          mapping: nil,
          name: "Add Cost Center Tag",
          query: DatadogAPIClient::V2::CreateRulesetRequestDataAttributesRulesItemsQuery.new({
            addition: DatadogAPIClient::V2::CreateRulesetRequestDataAttributesRulesItemsQueryAddition.new({
              key: "cost_center",
              value: "engineering",
            }),
            case_insensitivity: false,
            if_tag_exists: DatadogAPIClient::V2::DataAttributesRulesItemsIfTagExists::REPLACE,
            query: 'account_id:"123456789" AND service:"web-api"',
          }),
          reference_table: nil,
        }),
      ],
    }),
    id: "New Ruleset",
    type: DatadogAPIClient::V2::CreateRulesetRequestDataType::CREATE_RULESET,
  }),
})
p api_instance.create_tag_pipelines_ruleset(body)
