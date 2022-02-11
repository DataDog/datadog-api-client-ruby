require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ProcessesAPI.new
opts = {
  search: "search_example", # String | String to search processes by.
  tags: "account:prod,user:admin", # String | Comma-separated list of tags to filter processes by.
  from: 789, # Integer | Unix timestamp (number of seconds since epoch) of the start of the query window. If not provided, the start of the query window will be 15 minutes before the `to` timestamp. If neither `from` nor `to` are provided, the query window will be `[now - 15m, now]`.
  to: 789, # Integer | Unix timestamp (number of seconds since epoch) of the end of the query window. If not provided, the end of the query window will be 15 minutes after the `from` timestamp. If neither `from` nor `to` are provided, the query window will be `[now - 15m, now]`.
  page_limit: 56, # Integer | Maximum number of results returned.
  page_cursor: "page_cursor_example", # String | String to query the next page of results. This key is provided with each valid response from the API in `meta.page.after`.
}

begin
  # Get all processes
  result = api_instance.list_processes(opts)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling ProcessesAPI->list_processes: #{e}"
end
