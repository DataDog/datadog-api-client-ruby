# Get all dashboards with version "2027-01-01" returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new
opts = {
  filter_shared: false,
}
p api_instance.list_dashboards(opts)
