# Update an existing Action Connection with HTTPBasicAuth returns "Successfully updated Action Connection" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ActionConnectionAPI.new

body = DatadogAPIClient::V2::UpdateActionConnectionRequest.new({
  data: DatadogAPIClient::V2::ActionConnectionDataUpdate.new({
    type: DatadogAPIClient::V2::ActionConnectionDataType::ACTION_CONNECTION,
    attributes: DatadogAPIClient::V2::ActionConnectionAttributesUpdate.new({
      name: "HTTP Basic Auth Updated",
      integration: DatadogAPIClient::V2::HTTPIntegrationUpdate.new({
        type: DatadogAPIClient::V2::HTTPIntegrationType::HTTP,
        base_url: "https://api.updated.com",
        credentials: DatadogAPIClient::V2::HTTPBasicAuthUpdate.new({
          type: DatadogAPIClient::V2::HTTPBasicAuthType::HTTPBASICAUTH,
          username: "updated-user",
          password: "updated-password",
        }),
      }),
    }),
  }),
})
p api_instance.update_action_connection("cb460d51-3c88-4e87-adac-d47131d0423d", body)
