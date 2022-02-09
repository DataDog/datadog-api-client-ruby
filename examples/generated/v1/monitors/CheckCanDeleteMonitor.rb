require "datadog_api_client"
api_instance = DatadogAPIClient::V1::MonitorsAPI.new
monitor_ids = [3.56] # Array<Integer> | The IDs of the monitor to check.

begin
  # Check if a monitor can be deleted
  result = api_instance.check_can_delete_monitor(monitor_ids)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling MonitorsAPI->check_can_delete_monitor: #{e}"
end
