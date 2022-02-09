require "datadog_api_client"
api_instance = DatadogAPIClient::V1::KeyManagementAPI.new
key = "key_example" # String | The specific API key you are working with.

begin
  # Get API key
  result = api_instance.get_api_key(key)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling KeyManagementAPI->get_api_key: #{e}"
end
