require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::KeyManagementAPI.new
key = 'key_example' # String | The specific API key you are working with.

begin
  # Delete an API key
  result = api_instance.delete_api_key(key)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling KeyManagementAPI->delete_api_key: #{e}"
end
