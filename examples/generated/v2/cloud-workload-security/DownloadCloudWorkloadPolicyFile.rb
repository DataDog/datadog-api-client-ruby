require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::CloudWorkloadSecurityAPI.new

begin
  # Get the latest Cloud Workload Security policy
  result = api_instance.download_cloud_workload_policy_file
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling CloudWorkloadSecurityAPI->download_cloud_workload_policy_file: #{e}"
end
