# List Cloud Cost Management cloud accounts with AWS CUR 2.0 filter returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new
opts = {
  filter_cloud: "aws_cur2",
}
p api_instance.list_cost_cloud_accounts_v2(opts)
