require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ServiceAccountsAPI.new
service_account_id = "00000000-0000-1234-0000-000000000000" # String | The ID of the service account.
app_key_id = "app_key_id_example" # String | The ID of the application key.

begin
  # Delete an application key for this service account
  api_instance.delete_service_account_application_key(service_account_id, app_key_id)
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling ServiceAccountsAPI->delete_service_account_application_key: #{e}"
end
