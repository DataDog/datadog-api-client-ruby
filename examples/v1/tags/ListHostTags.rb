# Get Tags returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::TagsAPI.new
p api_instance.list_host_tags()
