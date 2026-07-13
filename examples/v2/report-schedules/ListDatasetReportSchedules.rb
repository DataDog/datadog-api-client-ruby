# List dataset report schedules returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ReportSchedulesAPI.new
p api_instance.list_dataset_report_schedules("dataset_id")
