# Restore deleted dashboards returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new

# there is a valid "dashboard" in the system
DASHBOARD_ID = ENV["DASHBOARD_ID"]

body = DatadogAPIClient::V1::DashboardRestoreRequest.new({
  data: [
    DatadogAPIClient::V1::DashboardBulkActionData.new({
      id: DASHBOARD_ID,
      type: DatadogAPIClient::V1::DashboardResourceType::DASHBOARD,
    }),
  ],
})
api_instance.restore_dashboards(body)
