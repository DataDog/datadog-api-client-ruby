require "datadog_api_client"
api_instance = DatadogAPIClient::V1::MonitorsAPI.new
monitor_id = 789 # Integer | The ID of the monitor.
body = DatadogAPIClient::V1::MonitorUpdateRequest.new # MonitorUpdateRequest | Edit a monitor request body.

begin
  # Edit a monitor
  result = api_instance.update_monitor(monitor_id, body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling MonitorsAPI->update_monitor: #{e}"
end
