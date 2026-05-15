# Get commitments utilization (timeseries) returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_commitments_utilization_timeseries".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new
p api_instance.get_commitments_utilization_timeseries(CommitmentsProvider::AWS, "product", 9223372036854775807, 9223372036854775807)
