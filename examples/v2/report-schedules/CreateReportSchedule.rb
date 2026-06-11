# Create a report schedule returns "CREATED" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_report_schedule".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ReportSchedulesAPI.new

body = DatadogAPIClient::V2::ReportScheduleCreateRequest.new({
  data: DatadogAPIClient::V2::ReportScheduleCreateRequestData.new({
    attributes: DatadogAPIClient::V2::ReportScheduleCreateRequestAttributes.new({
      delivery_format: DatadogAPIClient::V2::ReportScheduleDeliveryFormat::PDF,
      description: "Weekly summary of infrastructure health.",
      recipients: [
        "user@example.com",
        "slack:T01234567.C01234567.alerts",
        "teams:11111111-1111-1111-1111-111111111111|22222222-2222-2222-2222-222222222222|19:exampleChannelId@thread.tacv2",
      ],
      resource_id: "abc-def-ghi",
      resource_type: DatadogAPIClient::V2::ReportScheduleResourceType::DASHBOARD,
      rrule: 'DTSTART;TZID=America/New_York:20260601T090000\nRRULE:FREQ=WEEKLY;BYDAY=MO;BYHOUR=9;BYMINUTE=0',
      tab_id: "66666666-7777-8888-9999-000000000000",
      template_variables: [
        DatadogAPIClient::V2::ReportScheduleTemplateVariable.new({
          name: "env",
          values: [
            "prod",
          ],
        }),
      ],
      timeframe: "calendar_month",
      timezone: "America/New_York",
      title: "Weekly Infrastructure Report",
    }),
    type: DatadogAPIClient::V2::ReportScheduleType::SCHEDULE,
  }),
})
p api_instance.create_report_schedule(body)
