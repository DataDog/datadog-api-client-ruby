# Create ServiceNow template returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_service_now_template".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ServiceNowIntegrationAPI.new

body = DatadogAPIClient::V2::ServiceNowTemplateCreateRequest.new({
  data: DatadogAPIClient::V2::ServiceNowTemplateCreateRequestData.new({
    attributes: DatadogAPIClient::V2::ServiceNowTemplateCreateRequestAttributes.new({
      assignment_group_id: "65b3341b-0680-47f9-a6d4-134db45c603e",
      business_service_id: "65b3341b-0680-47f9-a6d4-134db45c603e",
      fields_mapping: {
        category: "software", priority: "1",
      },
      handle_name: "incident-template",
      instance_id: "65b3341b-0680-47f9-a6d4-134db45c603e",
      servicenow_tablename: "incident",
      user_id: "65b3341b-0680-47f9-a6d4-134db45c603e",
    }),
    type: DatadogAPIClient::V2::ServiceNowTemplateType::SERVICENOW_TEMPLATES,
  }),
})
p api_instance.create_service_now_template(body)
