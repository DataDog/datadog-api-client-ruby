require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::AWSIntegrationAPI.new

begin
  # List namespace rules
  result = api_instance.list_available_aws_namespaces
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling AWSIntegrationAPI->list_available_aws_namespaces: #{e}"
end
