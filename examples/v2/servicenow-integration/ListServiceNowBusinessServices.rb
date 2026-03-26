# List ServiceNow business services returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ServiceNowIntegrationAPI.new
p api_instance.list_service_now_business_services("9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d")
