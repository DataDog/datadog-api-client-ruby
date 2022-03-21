# Update host tags returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::TagsAPI.new

body = DatadogAPIClient::V1::HostTags.new({
  host: "test.host",
  tags: [
    "environment:production",
  ],
})
p api_instance.update_host_tags("host_name", body)
