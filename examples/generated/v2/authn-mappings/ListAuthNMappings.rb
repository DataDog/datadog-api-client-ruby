require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AuthNMappingsAPI.new
opts = {
  page_size: 10, # Integer | Size for a given page.
  page_number: 0, # Integer | Specific page number to return.
  sort: DatadogAPIClient::V2::AuthNMappingsSort::CREATED_AT_ASCENDING, # AuthNMappingsSort | Sort AuthN Mappings depending on the given field.
  include: ["inner_example"], # Array<String> |
  filter: "filter_example", # String | Filter all mappings by the given string.
}

begin
  # List all AuthN Mappings
  result = api_instance.list_auth_n_mappings(opts)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling AuthNMappingsAPI->list_auth_n_mappings: #{e}"
end
