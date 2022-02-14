require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DowntimesAPI.new
downtime_id = 123456 # Integer | ID of the downtime to cancel.

begin
  # Cancel a downtime
  api_instance.cancel_downtime(downtime_id)
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DowntimesAPI->cancel_downtime: #{e}"
end
