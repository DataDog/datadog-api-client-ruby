# Update an existing Workflow returns "Successfully updated a workflow." response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::WorkflowAutomationAPI.new

# there is a valid "workflow" in the system
WORKFLOW_DATA_ID = ENV["WORKFLOW_DATA_ID"]

body = DatadogAPIClient::V2::UpdateWorkflowRequest.new({
  data: DatadogAPIClient::V2::WorkflowDataUpdate.new({
    attributes: DatadogAPIClient::V2::WorkflowDataUpdateAttributes.new({
      description: "A sample workflow.",
      name: "Example Workflow",
      published: true,
      spec: DatadogAPIClient::V2::Spec.new({
        connection_envs: [
          DatadogAPIClient::V2::ConnectionEnv.new({
            connections: [
              DatadogAPIClient::V2::Connection.new({
                connection_id: "11111111-1111-1111-1111-111111111111",
                label: "INTEGRATION_DATADOG",
              }),
            ],
            env: DatadogAPIClient::V2::ConnectionEnvEnv::DEFAULT,
          }),
        ],
        handle: "my-handle",
        input_schema: DatadogAPIClient::V2::InputSchema.new({
          parameters: [
            DatadogAPIClient::V2::InputSchemaParameters.new({
              default_value: "default",
              name: "input",
              type: DatadogAPIClient::V2::InputSchemaParametersType::STRING,
            }),
          ],
        }),
        output_schema: DatadogAPIClient::V2::OutputSchema.new({
          parameters: [
            DatadogAPIClient::V2::OutputSchemaParameters.new({
              name: "output",
              type: DatadogAPIClient::V2::OutputSchemaParametersType::ARRAY_OBJECT,
              value: "outputValue",
            }),
          ],
        }),
        steps: [
          DatadogAPIClient::V2::Step.new({
            action_id: "com.datadoghq.dd.monitor.listMonitors",
            connection_label: "INTEGRATION_DATADOG",
            name: "Step1",
            outbound_edges: [
              DatadogAPIClient::V2::OutboundEdge.new({
                branch_name: "main",
                next_step_name: "Step2",
              }),
            ],
            parameters: [
              DatadogAPIClient::V2::Parameter.new({
                name: "tags",
                value: "service:monitoring",
              }),
            ],
          }),
          DatadogAPIClient::V2::Step.new({
            action_id: "com.datadoghq.core.noop",
            name: "Step2",
          }),
        ],
        triggers: [
          DatadogAPIClient::V2::MonitorTriggerWrapper.new({
            monitor_trigger: DatadogAPIClient::V2::MonitorTrigger.new({
              rate_limit: DatadogAPIClient::V2::TriggerRateLimit.new({
                count: 1,
                interval: "3600s",
              }),
            }),
            start_step_names: [
              "Step1",
            ],
          }),
          DatadogAPIClient::V2::GithubWebhookTriggerWrapper.new({
            start_step_names: [
              "Step1",
            ],
            github_webhook_trigger: DatadogAPIClient::V2::GithubWebhookTrigger.new({}),
          }),
        ],
      }),
      tags: [
        "team:infra",
        "service:monitoring",
        "foo:bar",
      ],
    }),
    id: "22222222-2222-2222-2222-222222222222",
    type: DatadogAPIClient::V2::WorkflowDataType::WORKFLOWS,
  }),
})
p api_instance.update_workflow(WORKFLOW_DATA_ID, body)
