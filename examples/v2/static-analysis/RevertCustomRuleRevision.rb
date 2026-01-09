# Revert Custom Rule Revision returns "Successfully reverted" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.revert_custom_rule_revision".to_sym] = true
end
api_instance = DatadogAPIClient::V2::StaticAnalysisAPI.new

body = DatadogAPIClient::V2::RevertCustomRuleRevisionRequest.new({
  data: DatadogAPIClient::V2::RevertCustomRuleRevisionRequestData.new({
    attributes: DatadogAPIClient::V2::RevertCustomRuleRevisionRequestDataAttributes.new({}),
    type: DatadogAPIClient::V2::RevertCustomRuleRevisionDataType::REVERT_CUSTOM_RULE_REVISION_REQUEST,
  }),
})
p api_instance.revert_custom_rule_revision("ruleset_name", "rule_name", body)
