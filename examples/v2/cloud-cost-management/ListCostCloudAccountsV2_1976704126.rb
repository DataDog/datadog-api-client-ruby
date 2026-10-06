# List Cloud Cost Management cloud accounts with OCI filter returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new
opts = {
  filter_cloud: "oci",
}
p api_instance.list_cost_cloud_accounts_v2(opts)
