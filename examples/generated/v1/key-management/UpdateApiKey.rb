require "datadog_api_client"
api_instance = DatadogAPIClient::V1::KeyManagementAPI.new
key = "key_example" # String | The specific API key you are working with.
body = DatadogAPIClient::V1::ApiKey.new # ApiKey |

begin
  # Edit an API key
  result = api_instance.update_api_key(key, body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling KeyManagementAPI->update_api_key: #{e}"
end
