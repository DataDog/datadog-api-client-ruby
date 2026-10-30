# Evaluate an AI Guard request with a numeric confidence threshold

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.evaluate_ai_guard_request".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AIGuardAPI.new

body = DatadogAPIClient::V2::AIGuardEvaluateRequest.new({
  data: DatadogAPIClient::V2::AIGuardEvaluateRequestData.new({
    type: DatadogAPIClient::V2::AIGuardEvaluationType::EVALUATIONS,
    attributes: DatadogAPIClient::V2::AIGuardEvaluateRequestDataAttributes.new({
      messages: [
        DatadogAPIClient::V2::AIGuardMessage.new({
          role: DatadogAPIClient::V2::AIGuardMessageRole::USER,
          content: "Hello world!",
        }),
      ],
      meta: DatadogAPIClient::V2::AIGuardMeta.new({
        confidence_threshold: 0.8,
      }),
    }),
  }),
})
p api_instance.evaluate_ai_guard_request(body)
