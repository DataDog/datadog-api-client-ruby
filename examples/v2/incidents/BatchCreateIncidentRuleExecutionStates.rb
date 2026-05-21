# Batch create incident rule execution states returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.batch_create_incident_rule_execution_states".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

body = DatadogAPIClient::V2::IncidentBatchCreateRuleExecutionStatesRequest.new({
  data: DatadogAPIClient::V2::IncidentBatchCreateRuleExecutionStatesData.new({
    attributes: DatadogAPIClient::V2::IncidentBatchCreateRuleExecutionStatesDataAttributes.new({
      rules: [
        DatadogAPIClient::V2::IncidentRuleExecutionStateRule.new({
          last_executed_at: "2024-01-01T00:00:00.000Z",
          rule_uuid: "00000000-0000-0000-0000-000000000000",
        }),
      ],
    }),
    type: DatadogAPIClient::V2::IncidentRuleExecutionStateType::INCIDENT_RULE_EXECUTION_STATES,
  }),
})
p api_instance.batch_create_incident_rule_execution_states("incident_id", body)
