# Update incident rule returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_incident_config_rule".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

body = DatadogAPIClient::V2::IncidentRuleRequest.new({
  data: DatadogAPIClient::V2::IncidentRuleDataRequest.new({
    attributes: DatadogAPIClient::V2::IncidentRuleAttributesRequest.new({
      name: "High Severity Rule",
    }),
    type: DatadogAPIClient::V2::IncidentRuleType::INCIDENT_RULE,
  }),
})
p api_instance.update_incident_config_rule("612e0c88-9137-4bd2-8de4-9356867d4c6a", body)
