require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::ServiceAccountsAPI.new
service_account_id = '00000000-0000-0000-0000-000000000000' # String | The ID of the service account.
body = DatadogAPIClient::V2::ApplicationKeyCreateRequest.new({data: DatadogAPIClient::V2::ApplicationKeyCreateData.new({attributes: DatadogAPIClient::V2::ApplicationKeyCreateAttributes.new({name: 'Application Key for managing dashboards'}), type: DatadogAPIClient::V2::ApplicationKeysType::APPLICATION_KEYS})}) # ApplicationKeyCreateRequest | 

begin
  # Create an application key for this service account
  result = api_instance.create_service_account_application_key(service_account_id, body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling ServiceAccountsAPI->create_service_account_application_key: #{e}"
end
