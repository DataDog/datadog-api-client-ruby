# List Model Lab project facet values returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_model_lab_project_facet_values".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ModelLabAPIAPI.new
p api_instance.list_model_lab_project_facet_values(ModelLabProjectFacetType::TAG, "model")
