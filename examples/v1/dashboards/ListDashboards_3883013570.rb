# Get all dashboards with version "2027-01-01" returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V1_20270101::DashboardsAPI.new
opts = {
  filter_shared: false,
}
p api_instance.list_dashboards(opts)
