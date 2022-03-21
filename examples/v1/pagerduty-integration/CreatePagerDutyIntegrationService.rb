# Create a new service object returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::PagerDutyIntegrationAPI.new

body = DatadogAPIClient::V1::PagerDutyService.new({
  service_key: "",
  service_name: "",
})
p api_instance.create_pager_duty_integration_service(body)
