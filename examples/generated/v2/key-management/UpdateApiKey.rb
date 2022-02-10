require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::KeyManagementAPI.new
api_key_id = 'api_key_id_example' # String | The ID of the API key.
body = DatadogAPIClient::V2::APIKeyUpdateRequest.new({data: DatadogAPIClient::V2::APIKeyUpdateData.new({attributes: DatadogAPIClient::V2::APIKeyUpdateAttributes.new({name: 'API Key for submitting metrics'}), id: '00112233-4455-6677-8899-aabbccddeeff', type: DatadogAPIClient::V2::APIKeysType::API_KEYS})}) # APIKeyUpdateRequest | 

begin
  # Edit an API key
  result = api_instance.update_api_key(api_key_id, body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling KeyManagementAPI->update_api_key: #{e}"
end
