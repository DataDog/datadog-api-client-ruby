require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::RolesAPI.new

begin
  # List permissions
  result = api_instance.list_permissions
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling RolesAPI->list_permissions: #{e}"
end
