# Fetch uptime for multiple tests returns "OK." response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new

body = DatadogAPIClient::V1::SyntheticsFetchUptimesPayload.new({
  from_ts: 0,
  public_ids: [],
  to_ts: 0,
})
p api_instance.fetch_uptimes(body)
