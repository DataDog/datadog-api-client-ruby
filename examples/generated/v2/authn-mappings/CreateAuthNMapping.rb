require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::AuthNMappingsAPI.new
body = DatadogAPIClient::V2::AuthNMappingCreateRequest.new({data: DatadogAPIClient::V2::AuthNMappingCreateData.new({type: DatadogAPIClient::V2::AuthNMappingsType::AUTHN_MAPPINGS})}) # AuthNMappingCreateRequest | 

begin
  # Create an AuthN Mapping
  result = api_instance.create_auth_n_mapping(body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling AuthNMappingsAPI->create_auth_n_mapping: #{e}"
end
