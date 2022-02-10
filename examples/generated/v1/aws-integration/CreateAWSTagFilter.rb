require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::AWSIntegrationAPI.new
body = DatadogAPIClient::V1::AWSTagFilterCreateRequest.new # AWSTagFilterCreateRequest | Set an AWS tag filter using an `aws_account_identifier`, `namespace`, and filtering string. Namespace options are `application_elb`, `elb`, `lambda`, `network_elb`, `rds`, `sqs`, and `custom`.

begin
  # Set an AWS tag filter
  result = api_instance.create_aws_tag_filter(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling AWSIntegrationAPI->create_aws_tag_filter: #{e}"
end
