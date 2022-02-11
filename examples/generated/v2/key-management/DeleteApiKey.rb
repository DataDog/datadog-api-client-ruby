require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::KeyManagementAPI.new
api_key_id = 'api_key_id_example' # String | The ID of the API key.

begin
  # Delete an API key
  api_instance.delete_api_key(api_key_id)
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling KeyManagementAPI->delete_api_key: #{e}"
end
