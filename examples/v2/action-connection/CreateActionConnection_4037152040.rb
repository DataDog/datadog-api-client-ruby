# Create a GitHub App Action Connection

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::ActionConnectionAPI.new

body = DatadogAPIClient::V2::CreateActionConnectionRequest.new({
  data: DatadogAPIClient::V2::ActionConnectionData.new({
    type: DatadogAPIClient::V2::ActionConnectionDataType::ACTION_CONNECTION,
    attributes: DatadogAPIClient::V2::ActionConnectionAttributes.new({
      name: "GitHub App Connection exampleactionconnection",
      integration: DatadogAPIClient::V2::GithubIntegration.new({
        type: DatadogAPIClient::V2::GithubIntegrationType::GITHUB,
        credentials: DatadogAPIClient::V2::GithubApp.new({
          type: DatadogAPIClient::V2::GithubAppType::GITHUBAPP,
          github_app_id: "123456",
          github_installation_id: "789012",
          private_key: "example-private-key",
          hostname: "github.example.com",
        }),
      }),
    }),
  }),
})
p api_instance.create_action_connection(body)
