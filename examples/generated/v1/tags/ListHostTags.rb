require "datadog_api_client"
api_instance = DatadogAPIClient::V1::TagsAPI.new
opts = {
  source: "source_example", # String | When specified, filters host list to those tags with the specified source.
}

begin
  # Get Tags
  result = api_instance.list_host_tags(opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling TagsAPI->list_host_tags: #{e}"
end
