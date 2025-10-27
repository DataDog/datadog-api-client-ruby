# Ruleset get multiple returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_multiple_rulesets".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::GetMultipleRulesetsRequest.new({
  data: DatadogAPIClient::V2::GetMultipleRulesetsRequestData.new({
    attributes: DatadogAPIClient::V2::GetMultipleRulesetsRequestDataAttributes.new({
      rulesets: [],
    }),
    type: DatadogAPIClient::V2::GetMultipleRulesetsRequestDataType::GET_MULTIPLE_RULESETS_REQUEST,
  }),
})
p api_instance.list_multiple_rulesets(body)
