require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::KeyManagementAPI.new
key = 'key_example' # String | The specific APP key you are working with.
body = DatadogAPIClient::V1::ApplicationKey.new # ApplicationKey | 

begin
  # Edit an application key
  result = api_instance.update_application_key(key, body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling KeyManagementAPI->update_application_key: #{e}"
end
