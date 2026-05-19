# Unstar a Model Lab project returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.unstar_model_lab_project".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ModelLabAPIAPI.new
api_instance.unstar_model_lab_project(2387)
