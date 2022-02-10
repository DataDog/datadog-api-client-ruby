require "datadog_api_client"
api_instance = DatadogAPIClient::V1::AWSIntegrationAPI.new
opts = {
  account_id: "account_id_example", # String | Only return AWS accounts that matches this `account_id`.
  role_name: "role_name_example", # String | Only return AWS accounts that matches this role_name.
  access_key_id: "access_key_id_example", # String | Only return AWS accounts that matches this `access_key_id`.
}

begin
  # List all AWS integrations
  result = api_instance.list_aws_accounts(opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling AWSIntegrationAPI->list_aws_accounts: #{e}"
end
