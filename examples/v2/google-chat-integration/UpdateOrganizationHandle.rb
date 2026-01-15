# Update organization handle returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::GoogleChatIntegrationAPI.new

# there is a valid "organization_handle" in the system
ORGANIZATION_HANDLE_DATA_ATTRIBUTES_NAME = ENV["ORGANIZATION_HANDLE_DATA_ATTRIBUTES_NAME"]
ORGANIZATION_HANDLE_DATA_ID = ENV["ORGANIZATION_HANDLE_DATA_ID"]

body = DatadogAPIClient::V2::GoogleChatUpdateOrganizationHandleRequest.new({
  data: DatadogAPIClient::V2::GoogleChatUpdateOrganizationHandleRequestData.new({
    attributes: DatadogAPIClient::V2::GoogleChatUpdateOrganizationHandleRequestAttributes.new({
      name: "fake-handle-name--updated",
    }),
  }),
  type: DatadogAPIClient::V2::GoogleChatOrganizationHandleType::GOOGLE_CHAT_ORGANIZATION_HANDLE_TYPE,
})
p api_instance.update_organization_handle("e54cb570-c674-529c-769d-84b312288ed7", ORGANIZATION_HANDLE_DATA_ID, body)
