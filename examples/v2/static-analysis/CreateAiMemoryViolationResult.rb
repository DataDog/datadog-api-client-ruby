# Create an AI memory violation result returns "Successfully created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_ai_memory_violation_result".to_sym] = true
end
api_instance = DatadogAPIClient::V2::StaticAnalysisAPI.new

body = DatadogAPIClient::V2::AiMemoryViolationResultRequest.new({
  data: DatadogAPIClient::V2::AiMemoryViolationResultRequestData.new({
    attributes: DatadogAPIClient::V2::AiMemoryViolationResultRequestAttributes.new({
      line: 10,
      message: "This is a false positive because the input is sanitized.",
      name: "src/main.py",
      repository_id: "my-repo",
      rule: "my-ai-ruleset/my-ai-rule",
      sha: "abc123def456789012345678901234567890abcd",
      type: DatadogAPIClient::V2::AiMemoryViolationType::FP,
    }),
    id: "violation-abc",
    type: DatadogAPIClient::V2::AiMemoryViolationResultDataType::AI_MEMORY_VIOLATION_RESULT,
  }),
})
p api_instance.create_ai_memory_violation_result(body)
