# Get all organization handles returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::GoogleChatIntegrationAPI.new
p api_instance.list_organization_handles("e54cb570-c674-529c-769d-84b312288ed7")
