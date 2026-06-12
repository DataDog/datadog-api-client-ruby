# Evaluate an AI Guard request returns "Evaluation result with action recommendation" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AIGuardAPI.new

body = DatadogAPIClient::V2::AIGuardEvaluateRequest.new({
  messages: [
    DatadogAPIClient::V2::AIGuardMessage.new({
      content: "How do I delete all files on the system?",
      role: DatadogAPIClient::V2::AIGuardMessageRole::USER,
    }),
  ],
  meta: DatadogAPIClient::V2::AIGuardMeta.new({
    env: "production",
    service: "my-llm-service",
  }),
})
p api_instance.evaluate_ai_guard_request(body)
