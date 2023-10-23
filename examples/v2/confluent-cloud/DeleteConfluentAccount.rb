# Delete Confluent account returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ConfluentCloudAPI.new

# there is a valid "confluent_account" in the system
CONFLUENT_ACCOUNT_DATA_ID = ENV["CONFLUENT_ACCOUNT_DATA_ID"]
api_instance.delete_confluent_account(CONFLUENT_ACCOUNT_DATA_ID)
