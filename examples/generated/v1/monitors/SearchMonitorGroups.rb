require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::MonitorsAPI.new
opts = {
  query: 'query_example', # String | After entering a search query in your [Manage Monitor page][1] use the query parameter value in the URL of the page as value for this parameter. Consult the dedicated [manage monitor documentation][2] page to learn more.  The query can contain any number of space-separated monitor attributes, for instance `query=\"type:metric status:alert\"`.  [1]: https://app.datadoghq.com/monitors/manage [2]: /monitors/manage/#find-the-monitors
  page: 789, # Integer | Page to start paginating from.
  per_page: 789, # Integer | Number of monitors to return per page.
  sort: 'sort_example' # String | String for sort order, composed of field and sort order separate by a comma, for example `name,asc`. Supported sort directions: `asc`, `desc`. Supported fields:  * `name` * `status` * `tags`
}

begin
  # Monitors group search
  result = api_instance.search_monitor_groups(opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling MonitorsAPI->search_monitor_groups: #{e}"
end
