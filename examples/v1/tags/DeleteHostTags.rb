# Remove host tags returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::TagsAPI.new
api_instance.delete_host_tags("host_name")
