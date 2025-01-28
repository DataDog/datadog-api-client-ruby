# Reorder the list of inbox rules in the pipeline returns "The list of inbox rules" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::ReorderInboxRulesParameters.new({
  data: [
    DatadogAPIClient::V2::ReorderInboxRulesParametersData.new({
      id: "123e4567-e89b-12d3-a456-426655440000",
      type: DatadogAPIClient::V2::InboxRulesType::INBOX_RULES,
    }),
  ],
})
p api_instance.reorder_inbox_rules(body)
