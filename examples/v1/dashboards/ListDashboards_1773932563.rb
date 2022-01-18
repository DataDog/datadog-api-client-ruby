# Get deleted dashboards returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new
opts = {
  filter_deleted: true,
}
p api_instance.list_dashboards(opts)
