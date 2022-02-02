require "datadog_api_client"
api_instance = DatadogAPIClient::V1::MonitorsAPI.new
monitor_id = 789 # Integer | The ID of the monitor
opts = {
  group_states: "group_states_example", # String | When specified, shows additional information about the group states. Choose one or more from `all`, `alert`, `warn`, and `no data`.
}

begin
  # Get a monitor's details
  result = api_instance.get_monitor(monitor_id, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling MonitorsAPI->get_monitor: #{e}"
end
