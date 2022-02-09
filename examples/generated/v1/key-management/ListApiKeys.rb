require "datadog_api_client"
api_instance = DatadogAPIClient::V1::KeyManagementAPI.new

begin
  # Get all API keys
  result = api_instance.list_api_keys
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling KeyManagementAPI->list_api_keys: #{e}"
end
