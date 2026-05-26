# List AI prompts returns "Successful response" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_ai_prompts".to_sym] = true
end
api_instance = DatadogAPIClient::V2::StaticAnalysisAPI.new
p api_instance.list_ai_prompts()
