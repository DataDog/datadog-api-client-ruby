# Generate data transformation description returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_data_transformation_description".to_sym] = true
end
api_instance = DatadogAPIClient::V2::WorkflowAutomationAPI.new

body = DatadogAPIClient::V2::DataTransformationDescriptionRequest.new({
  action_id: "com.datadoghq.transform.timestamp",
  script: "return new Date(data.timestamp).toISOString();",
})
p api_instance.create_data_transformation_description(body)
