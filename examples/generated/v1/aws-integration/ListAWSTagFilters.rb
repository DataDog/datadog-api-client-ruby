require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::AWSIntegrationAPI.new
account_id = 'account_id_example' # String | Only return AWS filters that matches this `account_id`.

begin
  # Get all AWS tag filters
  result = api_instance.list_aws_tag_filters(account_id)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling AWSIntegrationAPI->list_aws_tag_filters: #{e}"
end
