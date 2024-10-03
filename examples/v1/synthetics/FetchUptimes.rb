# Fetch uptime for multiple tests returns "OK." response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new

body = DatadogAPIClient::V1::SyntheticsFetchUptimesPayload.new({
  from_ts: 1726041488,
  public_ids: [
    "p8m-9gw-nte",
  ],
  to_ts: 1726055954,
})
p api_instance.fetch_uptimes(body)
