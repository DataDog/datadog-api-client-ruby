# Delete a single service object returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::PagerDutyIntegrationAPI.new
api_instance.delete_pager_duty_integration_service("service_name")
