require "datadog_api_client"
api_instance = DatadogAPIClient::V1::PagerDutyIntegrationAPI.new
body = DatadogAPIClient::V1::PagerDutyService.new({ service_key: "service_key_example", service_name: "service_name_example" }) # PagerDutyService | Create a new service object request body.

begin
  # Create a new service object
  result = api_instance.create_pager_duty_integration_service(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling PagerDutyIntegrationAPI->create_pager_duty_integration_service: #{e}"
end
