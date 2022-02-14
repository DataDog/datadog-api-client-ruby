require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::LogsAPI.new
opts = {
  filter_query: '@datacenter:us @role:db', # String | Search query following logs syntax.
  filter_index: 'main', # String | For customers with multiple indexes, the indexes to search Defaults to '*' which means all indexes
  filter_from: Time.parse('2019-01-02T09:42:36.320Z'), # Time | Minimum timestamp for requested logs.
  filter_to: Time.parse('2019-01-03T09:42:36.320Z'), # Time | Maximum timestamp for requested logs.
  sort: DatadogAPIClient::V2::LogsSort::TIMESTAMP_ASCENDING, # LogsSort | Order of logs in results.
  page_cursor: 'eyJzdGFydEF0IjoiQVFBQUFYS2tMS3pPbm40NGV3QUFBQUJCV0V0clRFdDZVbG8zY3pCRmNsbHJiVmxDWlEifQ==', # String | List following results with a cursor provided in the previous query.
  page_limit: 25 # Integer | Maximum number of logs in the response.
}

begin
  # Get a list of logs
  result = api_instance.list_logs_get(opts)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsAPI->list_logs_get: #{e}"
end
