# Add Fastly service returns "CREATED" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::FastlyIntegrationAPI.new

body = DatadogAPIClient::V2::FastlyServiceRequest.new({
  data: DatadogAPIClient::V2::FastlyServiceData.new({
    attributes: DatadogAPIClient::V2::FastlyServiceAttributes.new({
      tags: [
        "myTag",
        "myTag2:myValue",
      ],
    }),
    id: "abc123",
    type: DatadogAPIClient::V2::FastlyServiceType::FASTLY_SERVICES,
  }),
})
p api_instance.create_fastly_service("account_id", body)
