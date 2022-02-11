require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::ServiceChecksAPI.new
body = [DatadogAPIClient::V1::ServiceCheck.new({check: 'app.ok', host_name: 'app.host1', status: DatadogAPIClient::V1::ServiceCheckStatus::OK, tags: ['tags_example']})] # Array<ServiceCheck> | Service Check request body.

begin
  # Submit a Service Check
  result = api_instance.submit_service_check(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling ServiceChecksAPI->submit_service_check: #{e}"
end
