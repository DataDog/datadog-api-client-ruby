require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::MonitorsAPI.new
monitor_id = 789 # Integer | The ID of the monitor.
opts = {
  force: 'false' # String | Delete the monitor even if it's referenced by other resources (for example SLO, composite monitor).
}

begin
  # Delete a monitor
  result = api_instance.delete_monitor(monitor_id, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling MonitorsAPI->delete_monitor: #{e}"
end
