require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::AWSIntegrationAPI.new
body = DatadogAPIClient::V1::AWSAccount.new # AWSAccount | Your Datadog role delegation name. For more information about your AWS account Role name, see the [Datadog AWS integration configuration info](https://docs.datadoghq.com/integrations/amazon_web_services/#setup).

begin
  # Generate a new external ID
  result = api_instance.create_new_aws_external_id(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling AWSIntegrationAPI->create_new_aws_external_id: #{e}"
end
