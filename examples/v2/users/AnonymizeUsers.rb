# Anonymize users returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.anonymize_users".to_sym] = true
end
api_instance = DatadogAPIClient::V2::UsersAPI.new

body = DatadogAPIClient::V2::AnonymizeUsersRequest.new({
  data: DatadogAPIClient::V2::AnonymizeUsersRequestData.new({
    attributes: DatadogAPIClient::V2::AnonymizeUsersRequestAttributes.new({
      user_ids: [
        "00000000-0000-0000-0000-000000000000",
      ],
    }),
    id: "00000000-0000-0000-0000-000000000000",
    type: DatadogAPIClient::V2::AnonymizeUsersRequestType::ANONYMIZE_USERS_REQUEST,
  }),
})
p api_instance.anonymize_users(body)
