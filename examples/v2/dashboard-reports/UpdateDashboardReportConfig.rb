# Update Dashboard Report returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::DashboardReportsAPI.new

# there is a valid "dashboard" in the system
DASHBOARD_ID = ENV["DASHBOARD_ID"]

# there is a valid "dashboard_report" in the system
DASHBOARD_REPORT_DATA_ID = ENV["DASHBOARD_REPORT_DATA_ID"]

body = DatadogAPIClient::V2::DashboardReportUpdateRequest.new({
  data: DatadogAPIClient::V2::DashboardReportUpdateRequestData.new({
    attributes: DatadogAPIClient::V2::DashboardReportUpdateAttributes.new({
      schedule: DatadogAPIClient::V2::DashboardReportSchedule.new({
        active: false,
      }),
      title: "Summary of performance for Web Application Backend",
    }),
    id: DASHBOARD_REPORT_DATA_ID,
    type: DatadogAPIClient::V2::DashboardReportType::DASHBOARD_REPORTS_TYPE,
  }),
})
p api_instance.update_dashboard_report_config(DASHBOARD_ID, DASHBOARD_REPORT_DATA_ID, body)
