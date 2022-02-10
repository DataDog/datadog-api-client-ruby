require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RolesAPI.new
opts = {
  page_size: 10, # Integer | Size for a given page.
  page_number: 0, # Integer | Specific page number to return.
  sort: DatadogAPIClient::V2::RolesSort::NAME_ASCENDING, # RolesSort | Sort roles depending on the given field. Sort order is **ascending** by default. Sort order is **descending** if the field is prefixed by a negative sign, for example: `sort=-name`.
  filter: "filter_example", # String | Filter all roles by the given string.
}

begin
  # List roles
  result = api_instance.list_roles(opts)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling RolesAPI->list_roles: #{e}"
end
