require "datadog_api_client"
api_instance = DatadogAPIClient::V1::KeyManagementAPI.new
body = DatadogAPIClient::V1::ApiKey.new # ApiKey |

begin
  # Create an API key
  result = api_instance.create_api_key(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling KeyManagementAPI->create_api_key: #{e}"
end
