# Delete a tag filtering entry returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V1::AWSIntegrationAPI.new

body = DatadogAPIClient::V1::AWSTagFilterDeleteRequest.new({
  account_id: "FAKEAC0FAKEAC2FAKEAC",
  namespace: DatadogAPIClient::V1::AWSNamespace::ELB,
})
p api_instance.delete_aws_tag_filter(body)
