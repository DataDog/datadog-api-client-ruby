# Toggle a report schedule returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ReportSchedulesAPI.new

body = DatadogAPIClient::V2::ReportScheduleToggleRequest.new({
  data: DatadogAPIClient::V2::ReportScheduleToggleRequestData.new({
    attributes: DatadogAPIClient::V2::ReportScheduleToggleRequestAttributes.new({
      status: DatadogAPIClient::V2::ReportScheduleStatus::ACTIVE,
    }),
    type: DatadogAPIClient::V2::ReportScheduleType::SCHEDULE,
  }),
})
p api_instance.toggle_report_schedule("9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d", body)
