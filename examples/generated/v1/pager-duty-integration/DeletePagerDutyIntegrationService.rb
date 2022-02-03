require "datadog_api_client"
api_instance = DatadogAPIClient::V1::PagerDutyIntegrationAPI.new
service_name = "service_name_example" # String | The service name

begin
  # Delete a single service object
  api_instance.delete_pager_duty_integration_service(service_name)
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling PagerDutyIntegrationAPI->delete_pager_duty_integration_service: #{e}"
end
