require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::UsersAPI.new
user_id = '00000000-0000-0000-0000-000000000000' # String | The ID of the user.
body = DatadogAPIClient::V2::UserUpdateRequest.new({data: DatadogAPIClient::V2::UserUpdateData.new({attributes: DatadogAPIClient::V2::UserUpdateAttributes.new, id: '00000000-0000-0000-0000-000000000000', type: DatadogAPIClient::V2::UsersType::USERS})}) # UserUpdateRequest | 

begin
  # Update a user
  result = api_instance.update_user(user_id, body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling UsersAPI->update_user: #{e}"
end
