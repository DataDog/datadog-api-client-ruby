# Generate team-specific campaign reports returns "Accepted" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.generate_scorecard_campaign_team_reports".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ServiceScorecardsAPI.new

body = DatadogAPIClient::V2::GenerateCampaignTeamReportsRequest.new({
  data: DatadogAPIClient::V2::GenerateCampaignTeamReportsRequestData.new({
    attributes: DatadogAPIClient::V2::GenerateCampaignTeamReportsRequestAttributes.new({
      entity_owners: [
        DatadogAPIClient::V2::EntityOwnerDestination.new({
          slack: DatadogAPIClient::V2::SlackRoutingOptions.new({
            channel_id: "C024BDQ4N",
            workspace_id: "T024BDQ4N",
          }),
          team_id: "550e8400-e29b-41d4-a716-446655440000",
        }),
      ],
    }),
    type: DatadogAPIClient::V2::GenerateCampaignTeamReportsRequestDataType::CAMPAIGN_TEAM_REPORT,
  }),
})
p api_instance.generate_scorecard_campaign_team_reports("c10ODp0VCrrIpXmz", body)
