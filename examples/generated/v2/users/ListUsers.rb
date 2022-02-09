require "datadog_api_client"
api_instance = DatadogAPIClient::V2::UsersAPI.new
opts = {
  page_size: 10, # Integer | Size for a given page.
  page_number: 0, # Integer | Specific page number to return.
  sort: "name", # String | User attribute to order results by. Sort order is ascending by default. Sort order is descending if the field is prefixed by a negative sign, for example `sort=-name`. Options: `name`, `modified_at`, `user_count`.
  sort_dir: DatadogAPIClient::V2::QuerySortOrder::ASC, # QuerySortOrder | Direction of sort. Options: `asc`, `desc`.
  filter: "filter_example", # String | Filter all users by the given string. Defaults to no filtering.
  filter_status: "Active", # String | Filter on status attribute. Comma separated list, with possible values `Active`, `Pending`, and `Disabled`. Defaults to no filtering.
}

begin
  # List all users
  result = api_instance.list_users(opts)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling UsersAPI->list_users: #{e}"
end
