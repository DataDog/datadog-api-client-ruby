require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::AuthNMappingsAPI.new
authn_mapping_id = 'authn_mapping_id_example' # String | The UUID of the AuthN Mapping.
body = DatadogAPIClient::V2::AuthNMappingUpdateRequest.new({data: DatadogAPIClient::V2::AuthNMappingUpdateData.new({id: '3653d3c6-0c75-11ea-ad28-fb5701eabc7d', type: DatadogAPIClient::V2::AuthNMappingsType::AUTHN_MAPPINGS})}) # AuthNMappingUpdateRequest | 

begin
  # Edit an AuthN Mapping
  result = api_instance.update_auth_n_mapping(authn_mapping_id, body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling AuthNMappingsAPI->update_auth_n_mapping: #{e}"
end
