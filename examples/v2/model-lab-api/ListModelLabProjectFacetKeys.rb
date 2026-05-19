# List Model Lab project facet keys returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_model_lab_project_facet_keys".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ModelLabAPIAPI.new
p api_instance.list_model_lab_project_facet_keys()
