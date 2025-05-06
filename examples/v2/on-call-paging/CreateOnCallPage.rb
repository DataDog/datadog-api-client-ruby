# Create On-Call Page returns "OK." response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::On - CallPagingAPI.new

body = DatadogAPIClient::V2::CreatePageRequest.new({
  data: DatadogAPIClient::V2::CreatePageRequestData.new({
    attributes: DatadogAPIClient::V2::CreatePageRequestDataAttributes.new({
      description: "Page details.",
      tags: [
        "service:test",
      ],
      target: DatadogAPIClient::V2::CreatePageRequestDataAttributesTarget.new({
        identifier: "my-team",
        type: "team_handle",
      }),
      title: "Page title",
      urgency: "low",
    }),
    type: DatadogAPIClient::V2::CreatePageRequestDataType::PAGES,
  }),
})
p api_instance.create_on_call_page(body)
