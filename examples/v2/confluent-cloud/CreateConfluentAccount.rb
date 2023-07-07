# Add Confluent account returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ConfluentCloudAPI.new

body = DatadogAPIClient::V2::ConfluentAccountCreateRequest.new({
  data: DatadogAPIClient::V2::ConfluentAccountCreateRequestData.new({
    attributes: DatadogAPIClient::V2::ConfluentAccountCreateRequestAttributes.new({
      api_key: "TESTAPIKEY123",
      api_secret: "test-api-secret-123",
      resources: [
        DatadogAPIClient::V2::ConfluentAccountResourceAttributes.new({
          enable_custom_metrics: false,
          id: "resource-id-123",
          resource_type: "kafka",
          tags: [
            "myTag",
            "myTag2:myValue",
          ],
        }),
      ],
      tags: [
        "myTag",
        "myTag2:myValue",
      ],
    }),
    type: DatadogAPIClient::V2::ConfluentAccountType::CONFLUENT_CLOUD_ACCOUNTS,
  }),
})
p api_instance.create_confluent_account(body)
