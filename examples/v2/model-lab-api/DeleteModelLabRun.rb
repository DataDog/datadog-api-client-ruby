# Delete a Model Lab run returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_model_lab_run".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ModelLabAPIAPI.new
api_instance.delete_model_lab_run(70158)
