# Generate data transformation code returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_data_transformation".to_sym] = true
end
api_instance = DatadogAPIClient::V2::WorkflowAutomationAPI.new

body = DatadogAPIClient::V2::DataTransformationRequest.new({
  chat_history: [
    DatadogAPIClient::V2::ChatHistoryItem.new({
      content: "Please add error handling",
      role: DatadogAPIClient::V2::ChatHistoryItemRole::USER,
    }),
  ],
  context: DatadogAPIClient::V2::DataTransformationContext.new({
    context_variables: '{ "timestamp": 1234567890 }',
    current_script: "return data.timestamp;",
  }),
  language: DatadogAPIClient::V2::DataTransformationLanguage::JAVASCRIPT,
  stream: true,
  user_prompt: "Convert timestamp to ISO format",
})
p api_instance.create_data_transformation(body)
