require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::KeyManagementAPI.new
app_key_id = 'app_key_id_example' # String | The ID of the application key.

begin
  # Delete an application key owned by current user
  api_instance.delete_current_user_application_key(app_key_id)
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling KeyManagementAPI->delete_current_user_application_key: #{e}"
end
