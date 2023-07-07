# Add resource to Confluent account returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ConfluentCloudAPI.new

# there is a valid "confluent_account" in the system
CONFLUENT_ACCOUNT_DATA_ID = ENV["CONFLUENT_ACCOUNT_DATA_ID"]

body = DatadogAPIClient::V2::ConfluentResourceRequest.new({
  data: DatadogAPIClient::V2::ConfluentResourceRequestData.new({
    attributes: DatadogAPIClient::V2::ConfluentResourceRequestAttributes.new({
      resource_type: "kafka",
      tags: [
        "myTag",
        "myTag2:myValue",
      ],
      enable_custom_metrics: false,
    }),
    id: "exampleconfluentcloud",
    type: DatadogAPIClient::V2::ConfluentResourceType::CONFLUENT_CLOUD_RESOURCES,
  }),
})
p api_instance.create_confluent_resource(CONFLUENT_ACCOUNT_DATA_ID, body)
