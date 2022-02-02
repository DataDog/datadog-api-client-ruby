require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::DowntimesAPI.new
body = DatadogAPIClient::V1::Downtime.new # Downtime | Schedule a downtime request body.

begin
  # Schedule a downtime
  result = api_instance.create_downtime(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DowntimesAPI->create_downtime: #{e}"
end
