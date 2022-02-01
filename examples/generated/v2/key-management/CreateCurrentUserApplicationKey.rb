require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::KeyManagementAPI.new
body = DatadogAPIClient::V2::ApplicationKeyCreateRequest.new({data: DatadogAPIClient::V2::ApplicationKeyCreateData.new({attributes: DatadogAPIClient::V2::ApplicationKeyCreateAttributes.new({name: 'Application Key for managing dashboards'}), type: DatadogAPIClient::V2::ApplicationKeysType::APPLICATION_KEYS})}) # ApplicationKeyCreateRequest | 

begin
  # Create an application key for current user
  result = api_instance.create_current_user_application_key(body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling KeyManagementAPI->create_current_user_application_key: #{e}"
end
