require "datadog_api_client"
api_instance = DatadogAPIClient::V1::MonitorsAPI.new
opts = {
  group_states: "alert", # String | When specified, shows additional information about the group states. Choose one or more from `all`, `alert`, `warn`, and `no data`.
  name: "name_example", # String | A string to filter monitors by name.
  tags: "host:host0", # String | A comma separated list indicating what tags, if any, should be used to filter the list of monitors by scope. For example, `host:host0`.
  monitor_tags: "service:my-app", # String | A comma separated list indicating what service and/or custom tags, if any, should be used to filter the list of monitors. Tags created in the Datadog UI automatically have the service key prepended. For example, `service:my-app`.
  with_downtimes: true, # Boolean | If this argument is set to true, then the returned data includes all current active downtimes for each monitor.
  id_offset: 789, # Integer | Use this parameter for paginating through large sets of monitors. Start with a value of zero, make a request, set the value to the last ID of result set, and then repeat until the response is empty.
  page: 0, # Integer | The page to start paginating from. If this argument is not specified, the request returns all monitors without pagination.
  page_size: 20, # Integer | The number of monitors to return per page. If the page argument is not specified, the default behavior returns all monitors without a `page_size` limit. However, if page is specified and `page_size` is not, the argument defaults to 100.
}

begin
  # Get all monitor details
  result = api_instance.list_monitors(opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling MonitorsAPI->list_monitors: #{e}"
end
