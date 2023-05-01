# Get all downtimes returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DowntimesAPI.new
opts = {
  with_creator: true,
}
p api_instance.list_downtimes(opts)
