# Create a new Dashboard Report returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::DashboardReportsAPI.new

# there is a valid "dashboard" in the system
DASHBOARD_ID = ENV["DASHBOARD_ID"]

body = DatadogAPIClient::V2::DashboardReportCreateRequest.new({
  data: DatadogAPIClient::V2::DashboardReportCreate.new({
    attributes: DatadogAPIClient::V2::DashboardReportCreateAttributes.new({
      description: "This report summarizes the recent errors, latency, and uptime of our Web Application Backend.",
      destinations: DatadogAPIClient::V2::DashboardReportDestination.new({
        email: DatadogAPIClient::V2::DashboardReportDestinationEmail.new({
          recipient_addresses: [
            "jane.doe@example.com",
          ],
        }),
      }),
      schedule: DatadogAPIClient::V2::DashboardReportSchedule.new({
        active: true,
        frequency: DatadogAPIClient::V2::DashboardReportScheduleFrequency::DASHBOARD_REPORT_SCHEDULE_FREQUENCY_1D,
        repeat_at: DatadogAPIClient::V2::DashboardReportScheduleRepeatAt::DASHBOARD_REPORT_SCHEDULE_REPEAT_AT_13_30,
        repeat_on_day_of_month: nil,
        repeat_on_day_of_week: nil,
        timezone: "America/New_York",
      }),
      timeframe: DatadogAPIClient::V2::DashboardReportTimeframe::DASHBOARD_REPORT_TIMEFRAME_1W,
      title: "Summary of recent stability and performance for Web Application Backend",
    }),
    type: DatadogAPIClient::V2::DashboardReportType::DASHBOARD_REPORTS_TYPE,
  }),
})
p api_instance.create_dashboard_report_config(DASHBOARD_ID, body)
