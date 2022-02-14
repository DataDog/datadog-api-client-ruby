require "datadog_api_client"
api_instance = DatadogAPIClient::V1::TagsAPI.new
host_name = "host_name_example" # String | This endpoint allows you to add new tags to a host, optionally specifying where the tags came from.
body = DatadogAPIClient::V1::HostTags.new # HostTags | Update host tags request body.
opts = {
  source: "chef", # String | The source of the tags. [Complete list of source attribute values](https://docs.datadoghq.com/integrations/faq/list-of-api-source-attribute-value).
}

begin
  # Add tags to a host
  result = api_instance.create_host_tags(host_name, body, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling TagsAPI->create_host_tags: #{e}"
end
