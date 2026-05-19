# Get Model Lab artifact content returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_model_lab_artifact_content".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ModelLabAPIAPI.new
p api_instance.get_model_lab_artifact_content("1", "runs/42/model/weights.pt")
