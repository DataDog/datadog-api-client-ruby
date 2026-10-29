# Reroute On-Call Page returns "No Content." response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::OnCallPagingAPI.new

body = DatadogAPIClient::V2::RerouteOnCallPageRequest.new({
  data: DatadogAPIClient::V2::RerouteOnCallPageRequestData.new({
    attributes: DatadogAPIClient::V2::RerouteOnCallPageRequestDataAttributes.new({
      comment: "Rerouting to the database team.",
      target: DatadogAPIClient::V2::CreatePageRequestDataAttributesTarget.new({
        identifier: "my-team",
        type: DatadogAPIClient::V2::OnCallPageTargetType::TEAM_HANDLE,
      }),
    }),
    type: DatadogAPIClient::V2::RerouteOnCallPageRequestDataType::REROUTE,
  }),
})
api_instance.reroute_on_call_page("15e74b8b-f865-48d0-bcc5-453323ed2c8f", body)
