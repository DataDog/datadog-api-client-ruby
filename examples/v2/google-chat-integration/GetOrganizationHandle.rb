# Get organization handle returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::GoogleChatIntegrationAPI.new

# there is a valid "organization_handle" in the system
ORGANIZATION_HANDLE_DATA_ID = ENV["ORGANIZATION_HANDLE_DATA_ID"]
p api_instance.get_organization_handle("e54cb570-c674-529c-769d-84b312288ed7", ORGANIZATION_HANDLE_DATA_ID)
