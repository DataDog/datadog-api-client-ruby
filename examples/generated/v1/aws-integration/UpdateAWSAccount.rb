require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::AWSIntegrationAPI.new
body = DatadogAPIClient::V1::AWSAccount.new # AWSAccount | AWS request object
opts = {
  account_id: 'account_id_example', # String | Only return AWS accounts that matches this `account_id`.
  role_name: 'role_name_example', # String | Only return AWS accounts that match this `role_name`. Required if `account_id` is specified.
  access_key_id: 'access_key_id_example' # String | Only return AWS accounts that matches this `access_key_id`. Required if none of the other two options are specified.
}

begin
  # Update an AWS integration
  result = api_instance.update_aws_account(body, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling AWSIntegrationAPI->update_aws_account: #{e}"
end
