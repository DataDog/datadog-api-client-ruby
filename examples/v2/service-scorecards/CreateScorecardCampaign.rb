# Create a new campaign returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_scorecard_campaign".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ServiceScorecardsAPI.new

body = DatadogAPIClient::V2::CreateCampaignRequest.new({
  data: DatadogAPIClient::V2::CreateCampaignRequestData.new({
    attributes: DatadogAPIClient::V2::CreateCampaignRequestAttributes.new({
      description: "Campaign to improve security posture for Q1 2024.",
      due_date: "2024-03-31T23:59:59Z",
      entity_scope: "kind:service AND team:platform",
      guidance: "Please ensure all services pass the security requirements.",
      key: "q1-security-2024",
      name: "Q1 Security Campaign",
      owner_id: "550e8400-e29b-41d4-a716-446655440000",
      rule_ids: [
        "q8MQxk8TCqrHnWkx",
        "r9NRyl9UDrsIoXly",
      ],
      start_date: "2024-01-01T00:00:00Z",
      status: DatadogAPIClient::V2::CampaignStatus::IN_PROGRESS,
    }),
    type: DatadogAPIClient::V2::CampaignType::CAMPAIGN,
  }),
})
p api_instance.create_scorecard_campaign(body)
