# Delete Confluent account returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ConfluentCloudAPI.new
api_instance.delete_confluent_account("account_id")
