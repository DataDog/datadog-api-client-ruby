# Create Custom Rule returns "Successfully created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_custom_rule".to_sym] = true
end
api_instance = DatadogAPIClient::V2::StaticAnalysisAPI.new

body = DatadogAPIClient::V2::CustomRuleRequest.new({
  data: DatadogAPIClient::V2::CustomRuleRequestData.new({
    attributes: DatadogAPIClient::V2::CustomRuleRequestDataAttributes.new({}),
    type: DatadogAPIClient::V2::CustomRuleDataType::CUSTOM_RULE,
  }),
})
p api_instance.create_custom_rule("ruleset_name", body)
