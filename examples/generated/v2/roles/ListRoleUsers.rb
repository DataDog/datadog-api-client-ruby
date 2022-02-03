require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RolesAPI.new
role_id = "role_id_example" # String | The ID of the role.
opts = {
  page_size: 10, # Integer | Size for a given page.
  page_number: 0, # Integer | Specific page number to return.
  sort: "sort_example", # String | User attribute to order results by. Sort order is **ascending** by default. Sort order is **descending** if the field is prefixed by a negative sign, for example `sort=-name`. Options: `name`, `email`, `status`.
  filter: "filter_example", # String | Filter all users by the given string. Defaults to no filtering.
}

begin
  # Get all users of a role
  result = api_instance.list_role_users(role_id, opts)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling RolesAPI->list_role_users: #{e}"
end
