require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DowntimesAPI.new
downtime_id = 123456 # Integer | ID of the downtime to fetch.

begin
  # Get a downtime
  result = api_instance.get_downtime(downtime_id)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DowntimesAPI->get_downtime: #{e}"
end
