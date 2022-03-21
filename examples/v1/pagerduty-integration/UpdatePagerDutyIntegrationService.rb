# Update a single service object returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::PagerDutyIntegrationAPI.new

body = DatadogAPIClient::V1::PagerDutyServiceKey.new({
  service_key: "",
})
p api_instance.update_pager_duty_integration_service("service_name", body)
