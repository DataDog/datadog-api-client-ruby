# Get one application key owned by current user returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::KeyManagementAPI.new
p api_instance.get_current_user_application_key("app_key_id")
