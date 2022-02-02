require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::DowntimesAPI.new
monitor_id = 789 # Integer | The id of the monitor

begin
  # Get all downtimes for a monitor
  result = api_instance.list_monitor_downtimes(monitor_id)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DowntimesAPI->list_monitor_downtimes: #{e}"
end
