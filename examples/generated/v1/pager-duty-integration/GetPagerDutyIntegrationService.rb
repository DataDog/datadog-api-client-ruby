require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::PagerDutyIntegrationAPI.new
service_name = 'service_name_example' # String | The service name.

begin
  # Get a single service object
  result = api_instance.get_pager_duty_integration_service(service_name)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling PagerDutyIntegrationAPI->get_pager_duty_integration_service: #{e}"
end
