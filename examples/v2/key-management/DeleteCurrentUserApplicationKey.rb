# Delete an application key owned by current user returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::KeyManagementAPI.new
api_instance.delete_current_user_application_key("app_key_id")
