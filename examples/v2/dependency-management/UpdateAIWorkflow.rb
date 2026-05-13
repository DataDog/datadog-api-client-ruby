# Update an AI workflow returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_ai_workflow".to_sym] = true
end
api_instance = DatadogAPIClient::V2::DependencyManagementAPI.new

body = DatadogAPIClient::V2::UpdateAIWorkflowRequest.new({
  completed_at: "2024-06-01T12:00:00Z",
  entities: [
    [
      DatadogAPIClient::V2::Entity.new({
        entity_kind: "service",
        entity_name: "my-service",
        entity_namespace: "default",
        entity_team: "platform",
      }),
    ],
  ],
  filtering_logic: DatadogAPIClient::V2::FilteringLogic.new({}),
  grouping_logic: "by-team",
  max_number_of_entities_per_session: 10,
  prompt: "Updated prompt for the dependency upgrade",
  repository: "DataDog/datadog-agent",
  workflow_name: "Updated workflow name",
})
p api_instance.update_ai_workflow("9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d", body)
