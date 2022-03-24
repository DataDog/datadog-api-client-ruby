# Get host tags returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::TagsAPI.new
p api_instance.get_host_tags("host_name")
