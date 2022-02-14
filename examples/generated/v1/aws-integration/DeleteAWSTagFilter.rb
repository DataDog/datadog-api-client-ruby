require "datadog_api_client"
api_instance = DatadogAPIClient::V1::AWSIntegrationAPI.new
body = DatadogAPIClient::V1::AWSTagFilterDeleteRequest.new # AWSTagFilterDeleteRequest | Delete a tag filtering entry for a given AWS account and `dd-aws` namespace.

begin
  # Delete a tag filtering entry
  result = api_instance.delete_aws_tag_filter(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling AWSIntegrationAPI->delete_aws_tag_filter: #{e}"
end
