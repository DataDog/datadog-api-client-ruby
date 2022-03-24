# Delete an application key returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::KeyManagementAPI.new
api_instance.delete_application_key("app_key_id")
