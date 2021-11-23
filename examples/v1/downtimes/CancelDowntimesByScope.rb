# Cancel downtimes by scope returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DowntimesAPI.new

# there is a valid "downtime" in the system
DOWNTIME_SCOPE_0 = ENV["DOWNTIME_SCOPE_0"]

body = DatadogAPIClient::V1::CancelDowntimesByScopeRequest.new({
  scope: DOWNTIME_SCOPE_0,
})
p api_instance.cancel_downtimes_by_scope(body)
