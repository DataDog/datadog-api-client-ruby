# List Confluent Account resources returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ConfluentCloudAPI.new
p api_instance.list_confluent_resource("account_id")
