# Update Confluent account returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ConfluentCloudAPI.new

# there is a valid "confluent_account" in the system
CONFLUENT_ACCOUNT_DATA_ATTRIBUTES_API_KEY = ENV["CONFLUENT_ACCOUNT_DATA_ATTRIBUTES_API_KEY"]
CONFLUENT_ACCOUNT_DATA_ID = ENV["CONFLUENT_ACCOUNT_DATA_ID"]

body = DatadogAPIClient::V2::ConfluentAccountUpdateRequest.new({
  data: DatadogAPIClient::V2::ConfluentAccountUpdateRequestData.new({
    attributes: DatadogAPIClient::V2::ConfluentAccountUpdateRequestAttributes.new({
      api_key: CONFLUENT_ACCOUNT_DATA_ATTRIBUTES_API_KEY,
      api_secret: "update-secret",
      tags: [
        "updated_tag:val",
      ],
    }),
    type: DatadogAPIClient::V2::ConfluentAccountType::CONFLUENT_CLOUD_ACCOUNTS,
  }),
})
p api_instance.update_confluent_account(CONFLUENT_ACCOUNT_DATA_ID, body)
