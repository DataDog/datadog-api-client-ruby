# Get AWS metric name filter preview returns "AWS metric name filter preview result" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_aws_metric_name_filter_preview".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AWSIntegrationAPI.new
p api_instance.get_aws_metric_name_filter_preview("aws_account_config_id")
