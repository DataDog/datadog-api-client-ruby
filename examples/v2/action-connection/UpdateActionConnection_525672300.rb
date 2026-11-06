# Update a GitHub personal access token Action Connection without replacing its secret

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::ActionConnectionAPI.new

# there is a valid "github_pat_action_connection" in the system
GITHUB_PAT_ACTION_CONNECTION_DATA_ID = ENV["GITHUB_PAT_ACTION_CONNECTION_DATA_ID"]

body = DatadogAPIClient::V2::UpdateActionConnectionRequest.new({
  data: DatadogAPIClient::V2::ActionConnectionDataUpdate.new({
    type: DatadogAPIClient::V2::ActionConnectionDataType::ACTION_CONNECTION,
    attributes: DatadogAPIClient::V2::ActionConnectionAttributesUpdate.new({
      name: "GitHub personal access token Updated exampleactionconnection",
      integration: DatadogAPIClient::V2::GithubIntegrationUpdate.new({
        type: DatadogAPIClient::V2::GithubIntegrationType::GITHUB,
        credentials: DatadogAPIClient::V2::GithubPersonalAccessTokenUpdate.new({
          type: DatadogAPIClient::V2::GithubPersonalAccessTokenType::GITHUBPERSONALACCESSTOKEN,
          hostname: "github.updated.example.com",
        }),
      }),
    }),
  }),
})
p api_instance.update_action_connection(GITHUB_PAT_ACTION_CONNECTION_DATA_ID, body)
