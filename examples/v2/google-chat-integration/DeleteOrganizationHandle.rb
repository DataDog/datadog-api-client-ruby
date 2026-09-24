# Delete organization handle returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::GoogleChatIntegrationAPI.new

# there is a valid "organization_handle" in the system
ORGANIZATION_HANDLE_DATA_ID = ENV["ORGANIZATION_HANDLE_DATA_ID"]
api_instance.delete_organization_handle("e54cb570-c674-529c-769d-84b312288ed7", ORGANIZATION_HANDLE_DATA_ID)
