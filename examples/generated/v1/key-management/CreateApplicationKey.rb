require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::KeyManagementAPI.new
body = DatadogAPIClient::V1::ApplicationKey.new # ApplicationKey | 

begin
  # Create an application key
  result = api_instance.create_application_key(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling KeyManagementAPI->create_application_key: #{e}"
end
