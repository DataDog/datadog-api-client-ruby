require "datadog_api_client"
api_instance = DatadogAPIClient::V1::TagsAPI.new
host_name = "host_name_example" # String | This endpoint allows you to remove all user-assigned tags for a single host.
opts = {
  source: "source_example", # String | The source of the tags (for example chef, puppet). [Complete list of source attribute values](https://docs.datadoghq.com/integrations/faq/list-of-api-source-attribute-value).
}

begin
  # Remove host tags
  api_instance.delete_host_tags(host_name, opts)
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling TagsAPI->delete_host_tags: #{e}"
end
