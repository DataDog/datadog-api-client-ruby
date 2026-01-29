# Create ServiceNow ticket for case returns "Accepted" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_case_service_now_ticket".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new

body = DatadogAPIClient::V2::ServiceNowTicketCreateRequest.new({
  data: DatadogAPIClient::V2::ServiceNowTicketCreateData.new({
    attributes: DatadogAPIClient::V2::ServiceNowTicketCreateAttributes.new({
      assignment_group: "IT Support",
      instance_name: "my-instance",
    }),
    type: DatadogAPIClient::V2::ServiceNowTicketResourceType::TICKETS,
  }),
})
p api_instance.create_case_service_now_ticket("case_id", body)
