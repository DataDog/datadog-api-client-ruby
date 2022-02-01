require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::KeyManagementAPI.new
api_key_id = 'api_key_id_example' # String | The ID of the API key.
opts = {
  include: 'created_by,modified_by' # String | Comma separated list of resource paths for related resources to include in the response. Supported resource paths are `created_by` and `modified_by`.
}

begin
  # Get API key
  result = api_instance.get_api_key(api_key_id, opts)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling KeyManagementAPI->get_api_key: #{e}"
end
