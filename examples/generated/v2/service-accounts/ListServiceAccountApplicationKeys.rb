require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ServiceAccountsAPI.new
service_account_id = "00000000-0000-1234-0000-000000000000" # String | The ID of the service account.
opts = {
  page_size: 10, # Integer | Size for a given page.
  page_number: 0, # Integer | Specific page number to return.
  sort: DatadogAPIClient::V2::ApplicationKeysSort::CREATED_AT_ASCENDING, # ApplicationKeysSort | Application key attribute used to sort results. Sort order is ascending by default. In order to specify a descending sort, prefix the attribute with a minus sign.
  filter: "filter_example", # String | Filter application keys by the specified string.
  filter_created_at_start: "2020-11-24T18:46:21+00:00", # String | Only include application keys created on or after the specified date.
  filter_created_at_end: "2020-11-24T18:46:21+00:00", # String | Only include application keys created on or before the specified date.
}

begin
  # List application keys for this service account
  result = api_instance.list_service_account_application_keys(service_account_id, opts)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling ServiceAccountsAPI->list_service_account_application_keys: #{e}"
end
