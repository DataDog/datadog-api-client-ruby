require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::DowntimesAPI.new
downtime_id = 123456 # Integer | ID of the downtime to update.
body = DatadogAPIClient::V1::Downtime.new # Downtime | Update a downtime request body.

begin
  # Update a downtime
  result = api_instance.update_downtime(downtime_id, body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DowntimesAPI->update_downtime: #{e}"
end
