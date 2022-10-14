# Get resource from Confluent account returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ConfluentCloudAPI.new
p api_instance.get_confluent_resource("account_id", "resource_id")
