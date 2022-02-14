require "datadog_api_client"
api_instance = DatadogAPIClient::V1::PagerDutyIntegrationAPI.new
service_name = "service_name_example" # String | The service name
body = DatadogAPIClient::V1::PagerDutyServiceKey.new({ service_key: "service_key_example" }) # PagerDutyServiceKey | Update an existing service object request body.

begin
  # Update a single service object
  api_instance.update_pager_duty_integration_service(service_name, body)
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling PagerDutyIntegrationAPI->update_pager_duty_integration_service: #{e}"
end
