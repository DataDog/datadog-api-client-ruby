# Create a new service object returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V1::PagerDutyIntegrationAPI.new

body = DatadogAPIClient::V1::PagerDutyService.new({
  service_key: "",
  service_name: "",
})
p api_instance.create_pager_duty_integration_service(body)
