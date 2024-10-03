# Update api handle returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MicrosoftTeamsIntegrationAPI.new

# there is a valid "api_handle" in the system
API_HANDLE_DATA_ATTRIBUTES_NAME = ENV["API_HANDLE_DATA_ATTRIBUTES_NAME"]
API_HANDLE_DATA_ID = ENV["API_HANDLE_DATA_ID"]

body = DatadogAPIClient::V2::MicrosoftTeamsUpdateApiHandleRequest.new({
  data: DatadogAPIClient::V2::MicrosoftTeamsUpdateApiHandleRequestData.new({
    attributes: DatadogAPIClient::V2::MicrosoftTeamsApiHandleAttributes.new({
      name: "fake-handle-name--updated",
    }),
    type: DatadogAPIClient::V2::MicrosoftTeamsApiHandleType::HANDLE,
  }),
})
p api_instance.update_api_handle(API_HANDLE_DATA_ID, body)
