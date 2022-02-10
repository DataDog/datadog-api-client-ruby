require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::AuthNMappingsAPI.new
authn_mapping_id = 'authn_mapping_id_example' # String | The UUID of the AuthN Mapping.

begin
  # Get an AuthN Mapping by UUID
  result = api_instance.get_auth_n_mapping(authn_mapping_id)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling AuthNMappingsAPI->get_auth_n_mapping: #{e}"
end
