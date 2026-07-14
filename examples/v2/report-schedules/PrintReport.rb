# Print a report returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ReportSchedulesAPI.new

body = DatadogAPIClient::V2::PrintReportRequest.new({
  data: DatadogAPIClient::V2::PrintReportRequestData.new({
    attributes: DatadogAPIClient::V2::PrintReportRequestAttributes.new({
      from_ts: 1780318800000,
      resource_id: "abc-def-ghi",
      resource_type: DatadogAPIClient::V2::ReportScheduleResourceType::DASHBOARD,
      template_variables: [
        DatadogAPIClient::V2::ReportScheduleTemplateVariable.new({
          name: "env",
          values: [
            "prod",
          ],
        }),
      ],
      timeframe: "1w",
      timezone: "America/New_York",
      to_ts: 1780923600000,
    }),
    type: DatadogAPIClient::V2::PrintReportType::REPORT,
  }),
})
p api_instance.print_report(body)
