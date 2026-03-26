# List ServiceNow templates returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ServiceNowIntegrationAPI.new
p api_instance.list_service_now_templates()
