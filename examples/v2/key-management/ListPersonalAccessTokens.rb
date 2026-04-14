# Get all personal access tokens returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::KeyManagementAPI.new
p api_instance.list_personal_access_tokens()
