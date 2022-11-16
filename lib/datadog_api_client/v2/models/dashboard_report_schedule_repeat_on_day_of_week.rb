=begin
#Datadog API V2 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://github.com/DataDog/datadog-api-client-ruby/tree/master/.generator

 Unless explicitly stated otherwise all files in this repository are licensed under the Apache-2.0 License.
 This product includes software developed at Datadog (https://www.datadoghq.com/).
 Copyright 2020-Present Datadog, Inc.

=end

require 'date'
require 'time'

module DatadogAPIClient::V2
  # Defines which day of the week to send the weekly report. If the frequency field uses weeks (such as `1w`), this field is required and defines which day of the week to send the report. If the frequency field does not use weeks (for example, `1d`, `1mo`), then this field must be `null` (if provided). If this field is not provided in an update request, and the update request changes the frequency to use days or months (for example, `1d`, `1mo`), then this field is automatically set to `null`.  This field is mutually exclusive with `repeat_on_day_of_month` and cannot be defined in the same request that includes a non-null value for `repeat_on_day_of_month`.
  class DashboardReportScheduleRepeatOnDayOfWeek
    include BaseEnumModel

    DASHBOARD_REPORT_SCHEDULE_REPEAT_ON_DAY_OF_WEEK_MONDAY = "Monday".freeze
    DASHBOARD_REPORT_SCHEDULE_REPEAT_ON_DAY_OF_WEEK_TUESDAY = "Tuesday".freeze
    DASHBOARD_REPORT_SCHEDULE_REPEAT_ON_DAY_OF_WEEK_WEDNESDAY = "Wednesday".freeze
    DASHBOARD_REPORT_SCHEDULE_REPEAT_ON_DAY_OF_WEEK_THURSDAY = "Thursday".freeze
    DASHBOARD_REPORT_SCHEDULE_REPEAT_ON_DAY_OF_WEEK_FRIDAY = "Friday".freeze
    DASHBOARD_REPORT_SCHEDULE_REPEAT_ON_DAY_OF_WEEK_SATURDAY = "Saturday".freeze
    DASHBOARD_REPORT_SCHEDULE_REPEAT_ON_DAY_OF_WEEK_SUNDAY = "Sunday".freeze
  end
end