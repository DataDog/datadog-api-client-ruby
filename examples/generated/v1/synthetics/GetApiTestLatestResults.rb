require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
public_id = 'public_id_example' # String | The public ID of the test for which to search results for.
opts = {
  from_ts: 789, # Integer | Timestamp in milliseconds from which to start querying results.
  to_ts: 789, # Integer | Timestamp in milliseconds up to which to query results.
  probe_dc: ['inner_example'] # Array<String> | Locations for which to query results.
}

begin
  # Get an API test's latest results summaries
  result = api_instance.get_api_test_latest_results(public_id, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->get_api_test_latest_results: #{e}"
end
