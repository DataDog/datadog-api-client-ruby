# Remove an owner from a Model Lab project returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.remove_model_lab_project_owner".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ModelLabAPIAPI.new
api_instance.remove_model_lab_project_owner(1, "00000000-0000-0000-0000-000000000001")
