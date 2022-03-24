# Delete an application key returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::KeyManagementAPI.new
p api_instance.delete_application_key("key")
