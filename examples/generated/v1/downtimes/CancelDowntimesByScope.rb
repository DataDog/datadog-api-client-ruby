require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::DowntimesAPI.new
body = DatadogAPIClient::V1::CancelDowntimesByScopeRequest.new({scope: 'host:myserver'}) # CancelDowntimesByScopeRequest | Scope to cancel downtimes for.

begin
  # Cancel downtimes by scope
  result = api_instance.cancel_downtimes_by_scope(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DowntimesAPI->cancel_downtimes_by_scope: #{e}"
end
