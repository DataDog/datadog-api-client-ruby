# Reorder the list of mute rules in the pipeline returns "The list of mute rules" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::ReorderMuteRulesParameters.new({
  data: [
    DatadogAPIClient::V2::ReorderMuteRulesParametersData.new({
      id: "123e4567-e89b-12d3-a456-426655440000",
      type: DatadogAPIClient::V2::MuteRulesType::MUTE_RULES,
    }),
  ],
})
p api_instance.reorder_mute_rules(body)
