require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ServiceAccountsAPI.new
service_account_id = "00000000-0000-0000-0000-000000000000" # String | The ID of the service account.
app_key_id = "app_key_id_example" # String | The ID of the application key.

begin
  # Get one application key for this service account
  result = api_instance.get_service_account_application_key(service_account_id, app_key_id)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling ServiceAccountsAPI->get_service_account_application_key: #{e}"
end
