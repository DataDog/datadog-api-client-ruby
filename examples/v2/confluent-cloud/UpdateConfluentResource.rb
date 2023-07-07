# Update resource in Confluent account returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ConfluentCloudAPI.new

body = DatadogAPIClient::V2::ConfluentResourceRequest.new({
  data: DatadogAPIClient::V2::ConfluentResourceRequestData.new({
    attributes: DatadogAPIClient::V2::ConfluentResourceRequestAttributes.new({
      enable_custom_metrics: false,
      resource_type: "kafka",
      tags: [
        "myTag",
        "myTag2:myValue",
      ],
    }),
    id: "resource-id-123",
    type: DatadogAPIClient::V2::ConfluentResourceType::CONFLUENT_CLOUD_RESOURCES,
  }),
})
p api_instance.update_confluent_resource("account_id", "resource_id", body)
