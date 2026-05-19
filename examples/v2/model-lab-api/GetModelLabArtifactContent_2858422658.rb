# Download artifact content returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_model_lab_artifact_content".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ModelLabAPIAPI.new
p api_instance.get_model_lab_artifact_content("2387", "f635c73b70594ab6bb6e212cdf87d0d5/artifacts/lora_model/adapter_config.json")
