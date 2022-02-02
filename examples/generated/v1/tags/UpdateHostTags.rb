require "datadog_api_client"
api_instance = DatadogAPIClient::V1::TagsAPI.new
host_name = "host_name_example" # String | This endpoint allows you to update/replace all in an integration source with those supplied in the request.
body = DatadogAPIClient::V1::HostTags.new # HostTags | Add tags to host
opts = {
  source: "source_example", # String | The source of the tags (for example chef, puppet). [Complete list of source attribute values](https://docs.datadoghq.com/integrations/faq/list-of-api-source-attribute-value)
}

begin
  # Update host tags
  result = api_instance.update_host_tags(host_name, body, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling TagsAPI->update_host_tags: #{e}"
end
