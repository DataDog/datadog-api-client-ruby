require "datadog_api_client"
api_instance = DatadogAPIClient::V1::TagsAPI.new
host_name = "host_name_example" # String | When specified, filters list of tags to those tags with the specified source.
opts = {
  source: "source_example", # String | Source to filter.
}

begin
  # Get host tags
  result = api_instance.get_host_tags(host_name, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling TagsAPI->get_host_tags: #{e}"
end
