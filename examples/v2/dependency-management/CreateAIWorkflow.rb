# Create an AI workflow returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_ai_workflow".to_sym] = true
end
api_instance = DatadogAPIClient::V2::DependencyManagementAPI.new

body = DatadogAPIClient::V2::CreateAIWorkflowRequest.new({
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
  grouping_logic: "by-service",
  idp_campaign_id: "campaign-abc123",
  max_number_of_entities_per_session: 5,
  prompt: "Upgrade the lodash dependency to version 4.17.21",
  repository: "DataDog/datadog-agent",
  user: "john.doe@example.com",
  workflow_name: "Upgrade lodash to 4.17.21",
})
p api_instance.create_ai_workflow(body)
