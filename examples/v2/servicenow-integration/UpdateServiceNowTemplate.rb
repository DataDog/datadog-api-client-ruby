# Update ServiceNow template returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_service_now_template".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ServiceNowIntegrationAPI.new

body = DatadogAPIClient::V2::ServiceNowTemplateUpdateRequest.new({
  data: DatadogAPIClient::V2::ServiceNowTemplateUpdateRequestData.new({
    attributes: DatadogAPIClient::V2::ServiceNowTemplateUpdateRequestAttributes.new({
      assignment_group_id: "65b3341b-0680-47f9-a6d4-134db45c603e",
      business_service_id: "65b3341b-0680-47f9-a6d4-134db45c603e",
      fields_mapping: {
        category: "hardware", priority: "2",
      },
      handle_name: "incident-template-updated",
      instance_id: "65b3341b-0680-47f9-a6d4-134db45c603e",
      servicenow_tablename: "incident",
      user_id: "65b3341b-0680-47f9-a6d4-134db45c603e",
    }),
    type: DatadogAPIClient::V2::ServiceNowTemplateType::SERVICENOW_TEMPLATES,
  }),
})
p api_instance.update_service_now_template("9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d", body)
