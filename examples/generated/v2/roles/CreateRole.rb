require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::RolesAPI.new
body = DatadogAPIClient::V2::RoleCreateRequest.new({data: DatadogAPIClient::V2::RoleCreateData.new({attributes: DatadogAPIClient::V2::RoleCreateAttributes.new({name: 'developers'})})}) # RoleCreateRequest | 

begin
  # Create role
  result = api_instance.create_role(body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling RolesAPI->create_role: #{e}"
end
