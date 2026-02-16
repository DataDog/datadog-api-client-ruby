# Pick remediation actions from investigation returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_pick_remediation_from_investigation".to_sym] = true
end
api_instance = DatadogAPIClient::V2::WorkflowAutomationAPI.new

body = DatadogAPIClient::V2::PickRemediationFromInvestigationRequest.new({
  client: DatadogAPIClient::V2::ClientType::WORKFLOWS,
  integrations: [
    "aws",
    "datadog",
  ],
  investigation: "High CPU usage detected on prod-server-01",
  number_of_keyword_variants: 2,
  number_of_relevant_actions: 5,
  stability: DatadogAPIClient::V2::StabilityLevel::STABLE,
})
p api_instance.create_pick_remediation_from_investigation(body)
