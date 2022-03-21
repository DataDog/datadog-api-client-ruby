# Get a single service object returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::PagerDutyIntegrationAPI.new
p api_instance.get_pager_duty_integration_service("service_name")
