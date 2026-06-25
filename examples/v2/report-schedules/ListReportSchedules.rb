# List report schedules returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ReportSchedulesAPI.new
p api_instance.list_report_schedules()
