# Generate campaign report returns "Accepted" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.generate_scorecard_campaign_report".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ServiceScorecardsAPI.new

body = DatadogAPIClient::V2::GenerateCampaignReportRequest.new({
  data: DatadogAPIClient::V2::GenerateCampaignReportRequestData.new({
    attributes: DatadogAPIClient::V2::GenerateCampaignReportRequestAttributes.new({
      slack: DatadogAPIClient::V2::SlackRoutingOptions.new({
        channel_id: "C024BDQ4N",
        channel_name: "service-scorecards",
        workspace_id: "T024BDQ4N",
        workspace_name: "datadog-workspace",
      }),
    }),
    type: DatadogAPIClient::V2::GenerateCampaignReportRequestDataType::CAMPAIGN_REPORT,
  }),
})
p api_instance.generate_scorecard_campaign_report("c10ODp0VCrrIpXmz", body)
