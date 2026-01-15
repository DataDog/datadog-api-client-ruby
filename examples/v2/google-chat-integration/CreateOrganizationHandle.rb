# Create organization handle returns "CREATED" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::GoogleChatIntegrationAPI.new

body = DatadogAPIClient::V2::GoogleChatCreateOrganizationHandleRequest.new({
  data: DatadogAPIClient::V2::GoogleChatCreateOrganizationHandleRequestData.new({
    attributes: DatadogAPIClient::V2::GoogleChatCreateOrganizationHandleRequestAttributes.new({
      name: "Example-Google-Chat-Integration",
      space_resource_name: "spaces/AAQA-zFIks8",
    }),
  }),
  type: DatadogAPIClient::V2::GoogleChatOrganizationHandleType::GOOGLE_CHAT_ORGANIZATION_HANDLE_TYPE,
})
p api_instance.create_organization_handle("e54cb570-c674-529c-769d-84b312288ed7", body)
