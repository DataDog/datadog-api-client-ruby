require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AuthNMappingsAPI.new
authn_mapping_id = "authn_mapping_id_example" # String | The UUID of the AuthN Mapping.

begin
  # Delete an AuthN Mapping
  api_instance.delete_auth_n_mapping(authn_mapping_id)
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling AuthNMappingsAPI->delete_auth_n_mapping: #{e}"
end
