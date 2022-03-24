# Get all application keys owned by current user returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::KeyManagementAPI.new
p api_instance.list_current_user_application_keys()
