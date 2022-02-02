require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ServiceAccountsAPI.new
service_account_id = "00000000-0000-0000-0000-000000000000" # String | The ID of the service account.
app_key_id = "app_key_id_example" # String | The ID of the application key.
body = DatadogAPIClient::V2::ApplicationKeyUpdateRequest.new({ data: DatadogAPIClient::V2::ApplicationKeyUpdateData.new({ attributes: DatadogAPIClient::V2::ApplicationKeyUpdateAttributes.new, id: "00112233-4455-6677-8899-aabbccddeeff", type: DatadogAPIClient::V2::ApplicationKeysType::APPLICATION_KEYS }) }) # ApplicationKeyUpdateRequest |

begin
  # Edit an application key for this service account
  result = api_instance.update_service_account_application_key(service_account_id, app_key_id, body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling ServiceAccountsAPI->update_service_account_application_key: #{e}"
end
