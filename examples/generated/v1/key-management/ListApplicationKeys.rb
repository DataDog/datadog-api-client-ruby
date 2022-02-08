require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::KeyManagementAPI.new

begin
  # Get all application keys
  result = api_instance.list_application_keys
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling KeyManagementAPI->list_application_keys: #{e}"
end
